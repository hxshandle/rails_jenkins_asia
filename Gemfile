source 'http://ruby.taobao.org'

gem 'rails', '4.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'compass'
gem 'handlebars-rails', :git => 'git://github.com/kolo/handlebars-rails.git'
gem 'backbone-on-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'

#bootstrap
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Form
# gem 'simple_form'
gem 'simple_form', :git => 'git://github.com/plataformatec/simple_form.git'

#User system
gem 'devise'

#permission
gem 'cancan'

group :development do
  gem 'haml-rails'
end

group :development,:test do
  gem "rspec-rails", ">= 2.10.1"
  gem "factory_girl_rails", ">= 3.3.0"

end

group :test do
  gem 'database_cleaner'
  gem "cucumber-rails"
  gem 'email_spec'
  gem 'capybara','>=1.1.2'
  gem "launchy"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  #gem 'compass-rails'
  gem 'compass-rails', github: 'milgner/compass-rails', ref: '1749c06f15dc4b058427e7969810457213647fb8'
  gem 'handlebars_assets'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end



# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
