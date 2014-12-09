source 'https://rubygems.org'
ruby '2.1.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.8'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', :git => 'https://github.com/rails/turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', :git => 'https://github.com/rails/jbuilder'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# MongoDB Object Mapper
gem 'mongoid', :git => 'https://github.com/mongoid/mongoid.git'

# Bootstrap frontend management
gem 'therubyracer', :git => 'https://github.com/cowboyd/therubyracer'
gem 'less-rails', :git => 'https://github.com/metaskills/less-rails'
gem 'twitter-bootstrap-rails'
gem 'high_voltage'

# simple form 
gem 'simple_form'

# Authentication and Permissions
gem 'devise', :git => 'https://github.com/plataformatec/devise'
gem 'cancan', :git => 'https://github.com/ryanb/cancan'

# generates  the api under doc/api
group :doc do
	gem 'sdoc', :git => 'https://github.com/voloko/sdoc'
end

# dev group
group :development do
  gem 'spring', :git => 'https://github.com/rails/spring'
end

# development and test group
group :development, :test do
  gem 'rspec-rails'
  gem 'database_cleaner', :git => 'https://github.com/bmabey/database_cleaner'
end

# test group
group :test do
  gem 'capybara', :git => 'https://github.com/jnicklas/capybara'
  gem 'factory_girl_rails', :git => 'https://github.com/thoughtbot/factory_girl_rails'
end

# production group
group :production do 
  gem 'thin', :git => 'https://github.com/macournoyer/thin'
  gem 'rails_12factor', :git => 'https://github.com/heroku/rails_12factor'
end
