require_relative "lib/abizvn/general/version"

Gem::Specification.new do |spec|
  spec.name        = "abizvn-general"
  spec.version     = Abizvn::General::VERSION
  spec.authors     = [ "Juan" ]
  spec.email       = [ "juanonsoftware@gmail.com" ]
  spec.homepage    = "https://abizvn.com"
  spec.summary     = "General Settings for an application."
  spec.description = "Managing General Settings for an application."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/abizvncom/abizvn-general"
  spec.metadata["changelog_uri"] = "https://github.com/abizvncom/abizvn-general"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", "~> 7.2"
  spec.add_dependency "commonbase", "~> 0", '>= 0.2.1'

  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'shoulda-matchers'
end
