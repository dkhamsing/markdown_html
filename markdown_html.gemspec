# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_html/version'

Gem::Specification.new do |spec|
  spec.name          = MarkdownHtml::PRODUCT
  spec.version       = MarkdownHtml::VERSION
  spec.authors       = ["dkhamsing"]
  spec.email         = ["dkhamsing8@gmail.com"]

  spec.summary       = 'The simplest way to convert Markdown to HTML'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/dkhamsing/markdown_html'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = [MarkdownHtml::PRODUCT]
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'redcarpet'
end
