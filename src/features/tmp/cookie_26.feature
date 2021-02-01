Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
Scenario: The cookie "test" should not contain the value "out of date"
Then I expect that cookie "test" not contains "out of date"
