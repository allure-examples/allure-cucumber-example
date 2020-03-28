# frozen_string_literal: true

Given 'I am on' do |url|
  visit("http://#{url}")
end

When 'I enter {string}' do |term|
  fill_in('q', with: term)
end

Then 'I should see results' do
  expect(page).to have_css('[role=listbox]')
end
