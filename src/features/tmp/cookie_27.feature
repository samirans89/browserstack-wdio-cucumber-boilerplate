Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
@Pending
Scenario: The cookie "test3" should be created
When I set a cookie "test3" with the content "more cookies"
Then I expect that cookie "test3" exists
And I expect that cookie "test3" contains "more cookies"
