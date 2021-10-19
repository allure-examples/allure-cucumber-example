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

Then 'I should see github icon' do
  expect(page).to have_css('.octicon')
end

Then 'I should see gitlab icon' do
  expect(page).to have_css('[title=GitLab]', visible: :all)
end
