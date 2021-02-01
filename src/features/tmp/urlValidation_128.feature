Feature: Test if the url is a certain value
Scenario: The url should not contain "index"
Given I open the site "/index.html"
Then I expect the url to contain "index"
