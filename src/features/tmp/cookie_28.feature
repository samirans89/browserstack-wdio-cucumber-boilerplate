Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
@Pending
Scenario: The cookie "test3" should be deletable
Then I expect that cookie "test3" exists
When I delete the cookie "test3"
Then I expect that cookie "test3" not exists
