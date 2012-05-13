# -*- encoding: utf-8 -*-
require File.expand_path('../lib/angryrock/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bala Paranj"]
  gem.email         = ["bparanj@gmail.com"]
  gem.description   = %q{Rock Paper Scissors Game}
  gem.summary       = %q{Rock Paper Scissors Game Engine}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "angryrock"
  gem.require_paths = ["lib"]
  gem.version       = Angryrock::VERSION
  
  gem.add_development_dependency "rspec"
end
