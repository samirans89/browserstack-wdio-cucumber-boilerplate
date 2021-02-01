Feature: Test the focus state of a given element
Background: 
Given I open the site "/"
Scenario: The element #textinput should not have the focus by default
Then I expect that element "#textinput" is not focused
