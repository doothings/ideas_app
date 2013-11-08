source 'https://rubygems.org'

ruby '2.0.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use sqlite3 as the database for Active Record in development
group :development, :test do
	gem 'sqlite3'
	gem 'rspec-rails', '~> 2.14.0'
end

group :test do
	gem 'selenium-webdriver', '~>2.35.1'
	gem 'capybara', '~>2.1.0'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'acts-as-taggable-on'

group :production do
	gem 'pg', '~> 0.17'
	gem 'rails_12factor', '~> 0.0.2'
end
