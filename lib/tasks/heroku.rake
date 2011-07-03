namespace :heroku do
  desc "Set config vars on Heroku from config.yml"
  task :config do
    puts "Reading config/config.yml and sending config vars to Heroku..."
    CONFIG = YAML.load_file('config/config.yml')['production'] rescue {}
    command = "heroku config:add"
    CONFIG.each {|key, val| command << " #{key}='#{val}' " if val }
    system command
  end
end
