Feature: Sample Snippets test
@Pending
Scenario: delete cookie
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the cookie "test" does exist
When I delete the cookie "test"
Then I expect that cookie "test" not exists
