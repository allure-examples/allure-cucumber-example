Feature: Using Google

  @TMS_QA-123 @ISSUE_BUG-123
  Scenario Outline: Searching for a term

    Given I am on
      """
      google.com
      """
    When I enter "<search_term>"
    Then I should see results
    Examples:
      | search_term |
      | pizza       |
      | banana      |

  Scenario: Github page has icon
    Given I am on
      """
      github.com
      """
    Then I should see github icon

  Scenario: Gitlab page has icon
    Given I am on
      """
      gitlab.com
      """
    Then I should see gitlab icon

  Scenario: Manual attachment
    Given I am on
      """
      github.com
      """
    Then I should be able to create screenshot attachment
