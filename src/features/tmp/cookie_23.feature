Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
Scenario: The cookie "test" should exist
Then I expect that cookie "test" exists
