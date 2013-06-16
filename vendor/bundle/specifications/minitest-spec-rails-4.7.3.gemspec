# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-spec-rails"
  s.version = "4.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ken Collins"]
  s.date = "2013-05-26"
  s.description = "The minitest-spec-rails gem makes it easy to use the MiniTest::Spec DSL within your existing Rails 3 or 4 test suite."
  s.email = ["ken@metaskills.net"]
  s.homepage = "http://github.com/metaskills/minitest-spec-rails"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.3"
  s.summary = "Make Rails Use MiniTest::Spec!"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, ["~> 4.7"])
      s.add_runtime_dependency(%q<rails>, [">= 3.0"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<guard-minitest>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, ["~> 4.7"])
      s.add_dependency(%q<rails>, [">= 3.0"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<guard-minitest>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, ["~> 4.7"])
    s.add_dependency(%q<rails>, [">= 3.0"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<guard-minitest>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
