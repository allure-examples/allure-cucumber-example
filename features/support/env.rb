# frozen_string_literal: true

require 'pry'
require 'allure-cucumber'
require 'capybara/cucumber'

require_relative 'global'

# Allure
AllureCucumber.configure do |c|
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
  c.tms_prefix = 'TMS_'
  c.issue_prefix = 'ISSUE_'
end

Capybara.configure do |config|
  config.app_host = 'http://google.com'
  config.default_driver = ENV['CHROME_HEADLESS_DISABLED'] ? :selenium_chrome : :selenium_chrome_headless
end
