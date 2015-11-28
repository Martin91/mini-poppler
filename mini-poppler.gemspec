Gem::Specification.new do |s|
  s.name         = 'mini-poppler'
  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.summary      = 'simple Ruby binding of poppler, help to process PDFs'
  s.description  = 'simple Ruby binding of poppler, which is a PDF rendering library based on the xpdf-3.0 code base, visit: http://poppler.freedesktop.org/'
  s.version      = '0.0.1'
  s.files        = `git ls-files`.split("\n")
  s.authors      = ['Martin Hong']
  s.email        = 'hongzeqin@gmail.com'
  s.homepage     = 'https://github.com/Martin91/mini-poppler'
  s.license      = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.4.0', '>= 3.4.0'
  s.add_development_dependency 'byebug', '~> 8.2', '>= 8.2.1'
end