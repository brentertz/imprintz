source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'
gem 'rake', '0.8.7'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'
gem 'json'
gem 'haml'
gem 'haml-rails'

# Asset template engines
gem 'sass-rails', "~> 3.1.0.rc"
gem 'coffee-script'
gem 'uglifier'

gem 'jquery-rails'

# Deployment
gem 'heroku'

# Use unicorn as the web server
# gem 'unicorn'

group :production do
  gem 'therubyracer-heroku', '0.8.1.pre3'
end

group :test, :development do
  gem 'turn', :require => false # Pretty printed test output
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'rspec-rails'
  gem 'webrat'
end
