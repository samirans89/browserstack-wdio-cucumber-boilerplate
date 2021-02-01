Feature: Test if the url is a certain value
Scenario: The path should not be /index.html
Given I open the site "/"
Then I expect that the path is not "/index.html"
