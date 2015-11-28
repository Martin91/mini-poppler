module MiniPoppler
  module PDFInfo
    DATETIME_PATTERN = /D:(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})/

    extend ActiveSupport::Concern

    included do
      %w(title creator producer tagged user_properties suspects form java_script
          pages encrypted page_size page_rot file_size optimized pdf_version).each do |method_name|
        define_method method_name do
          info = serialize_value(extract_infos[method_name])


          info
        end
      end
    end

    def reload
      @infos = nil
    end

    def creation_date
      date = extract_infos["creation_date"]
      Time.gm(*date.match(DATETIME_PATTERN)[1..6])
    end

    def mod_date
      date = extract_infos["mod_date"]
      Time.gm(*date.match(DATETIME_PATTERN)[1..6])
    end

    def extract_infos
      return @infos unless @infos.nil?

      results = `pdfinfo -rawdates -enc UTF-8 #{path}`
      results = Hash[*results.split("\n").map{|item| item.split(/:\s+/)}.flatten.map(&:strip)]
      results.keys.each do |key|
        results[key.underscore.gsub(/\s+/, '_')] = results.delete(key)
      end

      @infos = results
    end

    def serialize_value(value)
      value = case value
      when /^\d+$/     # Integers, e.g. `193`
        value.to_i
      when /^\d+\.\d+$/    # Floats, e.g. `19.2`
        value.to_f
      when "no"
        false
      when "yes"
        true
      else
        value
      end
    end
  end
end