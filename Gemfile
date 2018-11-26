source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}
ruby "2.5.1"
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.1"
gem "rubocop", "~> 0.54.0", require: false
# Use sqlite3 as the database for Active Record
gem "sqlite3"
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
end
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
