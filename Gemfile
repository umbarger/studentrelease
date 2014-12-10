source 'https://rubygems.org'
ruby '2.1.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# MongoDB Object Mapper
gem 'mongoid'
gem 'bson_ext'


gem 'devise'

# Bootstrap frontend management
gem 'less-rails'
gem 'therubyracer'
gem 'twitter-bootstrap-rails'

# development and test group
group :development, :test do
  gem 'rspec-rails'
  gem 'database_cleaner'
end

# test group
group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
end

# production group
group :production do 
  gem 'thin'
  gem 'rails_12factor'
end
