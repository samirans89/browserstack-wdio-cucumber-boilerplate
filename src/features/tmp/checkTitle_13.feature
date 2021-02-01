Feature: Local server test
Background: 
Given I open the site "/"
Scenario: Is not Google
Then I expect that the title is not "Google"
