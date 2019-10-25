Feature: Using Google

  @TMS_QA-123 @ISSUE_BUG-123
  Scenario: Searching for a term

    Given I am on google.com
    When I enter "pizza"
    Then I should see results
