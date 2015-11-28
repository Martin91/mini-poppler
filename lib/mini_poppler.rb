require 'active_support'
require 'active_support/core_ext/string/inflections'
require 'mini_poppler/pdf'
require 'mini_poppler/pdfinfo'
# require 'mini_poppler/pdftoppm'
require 'mini_poppler/configuration'

module MiniPoppler
  def self.configure
    yield Configuration if block_given?
  end
end