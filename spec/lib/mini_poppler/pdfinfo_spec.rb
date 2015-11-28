require 'spec_helper'

describe MiniPoppler::PDFInfo do
  before(:all) do
    @pdf = new_pdf_instance
  end

  describe "#pages" do
    it { expect(@pdf.pages).to eq(5) }
  end

  describe "#title" do
    it { expect(@pdf.title).to eq('Untitled') }
  end

  describe "#creation_date" do
    it { expect(@pdf.creation_date).to eq(Time.gm(2015, 11, 28, 02, 47, 37)) }
  end

  describe "#mod_date" do
    it { expect(@pdf.mod_date).to eq(Time.gm(2015, 11, 28, 02, 47, 37))}
  end

  describe "respons to other methods" do
    it "other methods" do
      methods = %w(title creator producer tagged user_properties suspects form
        java_script pages encrypted page_size page_rot file_size optimized pdf_version)
      expect(@pdf).to respond_to(*methods)
    end
  end
end