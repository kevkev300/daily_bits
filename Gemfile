source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'postmark-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3.1'
gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '>= 6'
gem 'sidekiq' # background jobs (e.g. mailing)
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'dead_end' # enrich unexpected-end errors
  gem 'letter_opener' # view emails in browser
  gem 'listen', '~> 3.3'
  gem 'pry-byebug' # debugger
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
