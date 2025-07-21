source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "propshaft"
gem "puma", ">= 5.0"
gem "sqlite3", ">= 2.1", group: [:development, :test] # Restrict to dev/test only
# gem "pg", group: :production                       # PostgreSQL for production

gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
end
