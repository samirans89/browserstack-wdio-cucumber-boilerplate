Feature: Test the focus state of a given element
Background: 
Given I open the site "/"
Scenario: The element #textinput should have the focus when selected
When I click on the element "#textinput"
Then I expect that element "#textinput" is focused
