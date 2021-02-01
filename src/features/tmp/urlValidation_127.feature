Feature: Test if the url is a certain value
Scenario: The url should not contain "google"
Given I open the site "/"
Then I expect the url to not contain "google"
