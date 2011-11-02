# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{citygrid}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Johnny Khai Nguyen"]
  s.date = %q{2010-06-27}
  s.description = %q{Ruby wrapper for the CityGrid API}
  s.email = %q{johnnyn@gmail.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "MIT-LICENSE",
     "README.md",
     "Rakefile",
     "VERSION",
     "citygrid.gemspec",
     "init.rb",
     "install.rb",
     "lib/citygrid.rb",
     "lib/citygrid/client.rb",
     "tasks/citygrid_tasks.rake",
     "test/citygrid_test.rb",
     "test/helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/phuphighter/citygrid}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby wrapper for the CityGrid API}
  s.test_files = [
    "test/citygrid_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.5.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.5.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.5.0"])
  end
end

