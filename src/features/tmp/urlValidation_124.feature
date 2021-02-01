Feature: Test if the url is a certain value
Scenario: The url should be http://127.0.0.1:8080/
Given I open the site "/"
Then I expect that the url is "http://localhost:8080/"
