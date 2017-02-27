# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hotels_in_iraq/version'

Gem::Specification.new do |spec|
  spec.name          = "hotels_in_iraq"
  spec.version       = HotelsInIraq::VERSION
  spec.authors       = ["AyedhSh"]
  spec.email         = ["alshmary_ad@yahoo.com"]

  spec.summary       = "This application is based on the information display for hotels by city name and the name of the hotel, Rating and Price."
  spec.description   = "Welcome to Hotels Reservation application which will help you to choose the right hotel for booking."
  spec.homepage      = "https://github.com/AyedhSh/hotels_in_iraq"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "https://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # gem build name
  # gem push name

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "hotels_in_iraq"#spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
