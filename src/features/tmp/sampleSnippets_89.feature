Feature: Sample Snippets test
@Pending
Scenario: set / read cookie
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the cookie "test" does not exist
When I set a cookie "test" with the content "test123"
Then I expect that cookie "test" exists
And I expect that cookie "test" contains "test123"
And I expect that cookie "test" not contains "test1234"
