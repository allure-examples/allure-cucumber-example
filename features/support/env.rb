require 'allure-cucumber'
require 'capybara/cucumber'

include AllureCucumber::DSL

AllureCucumber.configure do |c|
     c.output_dir = "allure"
end
