# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "activeadmin/ace_editor/version"

Gem::Specification.new do |spec|
  spec.name = "activeadmin_ace_editor"
  spec.version = ActiveAdmin::AceEditor::VERSION
  spec.summary = "Ace Editor for ActiveAdmin"
  spec.description = "An Active Admin plugin to use Ace Rich Text Editor"
  spec.license = "MIT"
  spec.authors = ["Steve Gore"]
  spec.email = "sagore@gmail.com"
  # spec.homepage = "https://github.com/blocknotes/activeadmin_ace_editor"

  spec.files = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activeadmin", ">= 1.0"
end
