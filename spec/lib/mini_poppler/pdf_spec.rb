require 'spec_helper'

describe MiniPoppler::PDF do
  describe ".new" do
    it "create a pdf instance" do
      pdf = new_pdf_instance
      expect(pdf).to be_an_instance_of(MiniPoppler::PDF)
      expect(pdf.path).to eq(PDF_FILE_PATH)
    end
  end
end