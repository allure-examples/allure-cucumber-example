# frozen_string_literal: true

require 'allure-cucumber'
require 'capybara/cucumber'
require 'webdrivers/chromedriver'

# Allure
Allure.configure do |c|
  c.results_directory = 'report/allure-results'
  c.clean_results_directory = true
  c.link_tms_pattern = 'https://example.org/tms/{}'
  c.link_issue_pattern = 'https://example.org/issue/{}'
end

AllureCucumber.configure do |c|
  c.tms_prefix = 'TMS_'
  c.issue_prefix = 'ISSUE_'
end

Capybara.configure do |config|
  config.app_host = 'http://google.com'
  config.default_driver = :selenium
end

Capybara.register_driver(:selenium) do
  Capybara::Selenium::Driver.new(
    nil,
    browser: :chrome,
    clear_local_storage: true,
    clear_session_storage: true,
    desired_capabilities: {
      :browserName => 'chrome',
      'goog:chromeOptions' => { args: ['--headless'] }
    }
  )
end
