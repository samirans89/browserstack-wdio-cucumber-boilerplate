Feature: Test the selected state of a checkbox
Background: 
Given I open the site "/"
Scenario: The checkbox should not be selected by default
Then I expect that checkbox "#checkbox" is not checked
