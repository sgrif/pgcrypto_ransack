Gem::Specification.new do |s|
  s.name = "pgcrypto_ransack"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sean Griffin", "Joanne Cheng"]
  s.date = "2013-04-22"
  s.description = "Makes pgcrypto work with ransack"
  s.email = "sean@thoughtbot.com"
  s.extra_rdoc_files = []
  s.files = [
    "lib/pgcrypto_ransack.rb",
  ]
  s.homepage = "http://github.com/sgrif/pgcrypto_ransack"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Extends pgcrypto to support ransack"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<pgcrypto>, [">= 0"])
    else
      s.add_dependency(%q<pgcrypto>, [">= 0"])
    end
  else
    s.add_dependency(%q<pgcrypto>, [">= 0"])
  end
end

