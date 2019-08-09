Gem::Specification.new do |s|
  s.name = 'rexle-css'
  s.version = '0.2.0'
  s.summary = 'Transforms a CSS selector to an XPath'
  s.authors = ['James Robertson']
  s.files = Dir['lib/rexle-css.rb']
  s.signing_key = '../privatekeys/rexle-css.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/rexle-css'
end
