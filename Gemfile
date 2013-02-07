source 'http://ruby.taobao.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'jquery-rails'
#bootstrap
gem 'bootstrap-sass'
gem 'font-awesome-rails'

# Form
gem 'simple_form'

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
  gem "cucumber-rails", ">= 1.3.0", :require => false

end

group :test do
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'capybara','>=1.1.2'
  gem "launchy"
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

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
