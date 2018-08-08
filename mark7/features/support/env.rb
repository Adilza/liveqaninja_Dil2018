require 'capybara'
require 'capybara/cucumber'
# require 'selenium/webdriver'

PATH = "C:\Windows.chromedriver.exe"

    Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

