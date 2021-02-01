Feature: Local server test
Background: 
Given I open the site "/"
Scenario: Is correct
Then I expect that the title is "DEMO APP"
