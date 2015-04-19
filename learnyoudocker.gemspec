# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "learnyoudocker"
  s.version     = "0.0.1"
  s.authors     = ["Ka Shing Law", "Will Collani", "Will Weaver"]
  s.email       = ["learn@learnyoudocker.com"]
  s.homepage    = "http://www.learnyoudocker.com"
  s.summary     = %q{Learn docker through a series of manageable tests}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_runtime_dependency "serverspec"
  s.add_runtime_dependency "highline"
end
