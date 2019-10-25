# frozen_string_literal: true

Given 'I am on google.com' do
  visit('/')
end

When 'I enter {string}' do |term|
  fill_in('q', with: term)
end

Then 'I should see results' do
  expect(page).to have_css('[role=listbox]')
end
