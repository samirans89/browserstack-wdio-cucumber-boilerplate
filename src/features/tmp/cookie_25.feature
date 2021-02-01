Feature: Test the existens and content of cookies
Background: 
Given I open the site "/"
And I pause for 500ms
Scenario: The cookie "test" should contain the value "yumyum"
Given the cookie "test" contains not the value "out of date"
Then I expect that cookie "test" contains "yumyum"
