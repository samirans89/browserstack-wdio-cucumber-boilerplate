Feature: Test the attributes of a given element
Background: 
Given I open the site "/"
Scenario: The CSS attribute "font-weight" of a element should be "bold"
Then I expect that the css attribute "font-weight" from element "#cssAttributeComparison" is "700"
