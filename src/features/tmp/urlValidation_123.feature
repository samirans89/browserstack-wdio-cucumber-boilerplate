Feature: Test if the url is a certain value
Scenario: The url should not be http://www.google.com/
Given I open the site "/"
Then I expect that the url is not "http://www.google.com/"
