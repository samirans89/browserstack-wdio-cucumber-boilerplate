Feature: Test the selected state of a checkbox
Background: 
Given I open the site "/"
Scenario: The checkbox should be checked when clicked
Given the checkbox "#checkbox" is not checked
When I click on the element "#checkbox"
Then I expect that checkbox "#checkbox" is checked
