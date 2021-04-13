# frozen_string_literal: true

require 'json'
pkg = JSON.parse(File.open("package.json").read)

Gem::Specification.new do |spec|
  spec.name          = pkg["name"]
  spec.version       = pkg["version"]
  spec.authors       = [pkg["author"]["name"]]
  spec.email         = [pkg["author"]["email"]]

  spec.summary       = pkg["description"]
  spec.homepage      = pkg["homepage"]
  spec.license       = pkg["license"]

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_scss|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 12.0"
end
