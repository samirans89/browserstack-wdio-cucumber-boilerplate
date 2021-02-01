Feature: Test if the url is a certain value
Scenario: The path should be /index.html
Given I open the site "/index.html"
Then I expect that the path is "/index.html"
