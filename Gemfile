source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'json'
gem 'haml'
gem 'haml-rails'
gem 'jquery-rails'
gem 'client_side_validations'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :production do
  gem 'unicorn'
end

group :test, :development do
  gem 'turn', :require => false # Pretty printed test output
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
  gem 'webrat'
end
