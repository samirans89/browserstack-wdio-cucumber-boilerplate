Feature: Test the selected state of a checkbox
Background: 
Given I open the site "/"
Scenario: The checkbox should deselect when clicked twice
Given the checkbox "#checkbox" is not checked
When I click on the element "#checkbox"
And I click on the element "#checkbox"
Then I expect that checkbox "#checkbox" is not checked
