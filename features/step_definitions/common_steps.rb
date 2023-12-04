# frozen_string_literal: true

Given 'I am on' do |url|
  visit("http://#{url}")
end

Given 'I am a flaky test' do
  # no-op step to test retry
end

When 'I enter {string}' do |term|
  fill_in('q', with: term)
end

When 'I run this test' do
  Global.increment_run
end

Then 'I should see results' do
  expect(page).to have_css('[role=listbox]')
end

Then 'I should see github icon' do
  expect(page).to have_css('.octicon')
end

Then 'I should see gitlab icon' do
  expect(page).to have_css('[id=tanukiHomeDesktop]', visible: :all)
end

Then 'it passes on the second try' do
  expect(Global.run).to eq(2)
end
