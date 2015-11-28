require 'mini_poppler'

PDF_FILE_PATH = "spec/support/test.pdf"
def new_pdf_instance
  MiniPoppler::PDF.new(PDF_FILE_PATH)
end