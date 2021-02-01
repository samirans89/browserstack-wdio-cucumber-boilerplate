Feature: Test the attributes of a given element
Background: 
Given I open the site "/"
Scenario: The (missing) CSS attribute "border" of a element should not be "0"
Then I expect that the css attribute "border" from element "#cssAttributeComparison" is not "0"
