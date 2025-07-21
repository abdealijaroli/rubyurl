source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "propshaft"
gem "puma", ">= 5.0", group: [:development, :test] # Restrict to dev/test only

gem "sqlite3", ">= 2.1"

gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
end
