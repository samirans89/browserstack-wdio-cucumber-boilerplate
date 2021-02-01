Feature: Test the attributes of a given element
Background: 
Given I open the site "/"
Scenario: The CSS attribute "color" of a element should be "red"
Then I expect that the css attribute "color" from element "#cssAttributeComparison" is "rgba(255,0,0,1)"
