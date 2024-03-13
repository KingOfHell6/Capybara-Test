require 'capybara/cucumber'
require 'site_prism'
require 'dotenv'

Dotenv.load

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = ENV['BASE_URL']
end
