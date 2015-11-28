require 'mini_poppler/pdfinfo'

module MiniPoppler
  class PDF
    include PDFInfo

    attr_accessor :path

    def initialize(path)
      self.path = path
    end
  end
end