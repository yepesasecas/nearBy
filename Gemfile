source 'https://rubygems.org'

ruby '2.2.2'
gem 'rails', '>= 5.0.0.beta1', '< 5.1'
gem 'puma'
gem 'sidekiq'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug'
  gem 'sqlite3'
end

group :development do
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

