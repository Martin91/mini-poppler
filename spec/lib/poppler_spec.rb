require 'spec_helper'

describe MiniPoppler do
  describe ".configure" do
    it "save configured values" do
      prefix = "tmp/converted/images"
      MiniPoppler.configure do |poppler|
        poppler.ppm_file_prefix = prefix
      end

      expect(MiniPoppler::Configuration.ppm_file_prefix).to eq(prefix)
    end
  end
end