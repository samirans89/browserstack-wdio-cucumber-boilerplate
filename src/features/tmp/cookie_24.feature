Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
Scenario: The cookie "test2" should not exist
Given the cookie "test" contains the value "yumyum"
Then I expect that cookie "test2" not exists
