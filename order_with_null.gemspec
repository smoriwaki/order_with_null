# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'order_with_null/version'

Gem::Specification.new do |spec|
  spec.name          = 'order_with_null'
  spec.version       = OrderWithNull::VERSION
  spec.authors       = ['smoriwaki']
  spec.email         = ['smoriwaki@cuon.co.jp']

  spec.summary       = %q{Add support options of ordering about null values.}
  spec.description   = %q{Add support options of ordering about null values for PostgreSQL.}
  spec.homepage      = 'https://github.com/smoriwaki/order_with_null'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'arel'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
