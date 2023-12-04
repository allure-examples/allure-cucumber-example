Feature: flaky test example

Scenario: Passes on the second try
  Given I am a flaky test
  When I run this test
  Then it passes on the second try
