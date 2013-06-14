# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "capybara_minitest_spec"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jared Ning"]
  s.date = "2012-11-25"
  s.description = "Use Capybara matchers with MiniTest. Specifically, it defines MiniTest::Spec expectations like page.must_have_content('content')."
  s.email = ["jared@redningja.com"]
  s.homepage = "https://github.com/ordinaryzelig/capybara_minitest_spec"
  s.require_paths = ["lib"]
  s.rubyforge_project = "capybara_minitest_spec"
  s.rubygems_version = "2.0.3"
  s.summary = "Capybara + MiniTest::Spec"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capybara>, [">= 2"])
      s.add_runtime_dependency(%q<minitest>, [">= 2"])
      s.add_development_dependency(%q<awesome_print>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0.9.4"])
    else
      s.add_dependency(%q<capybara>, [">= 2"])
      s.add_dependency(%q<minitest>, [">= 2"])
      s.add_dependency(%q<awesome_print>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0.9.4"])
    end
  else
    s.add_dependency(%q<capybara>, [">= 2"])
    s.add_dependency(%q<minitest>, [">= 2"])
    s.add_dependency(%q<awesome_print>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0.9.4"])
  end
end
