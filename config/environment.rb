# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Imprintz::Application.initialize!

# Support yaml and heroku config vars, preferring ENV for heroku
CONFIG = (YAML.load_file('config/config.yml')[Rails.env] rescue {}).merge(ENV)