Feature: Test the attributes of a given element
Background: 
Given I open the site "/"
Scenario: The CSS attribute "color" of a element should not be "blue"
Then I expect that the css attribute "color" from element "#cssAttributeComparison" is not " rgba(0,255,0,1)"
