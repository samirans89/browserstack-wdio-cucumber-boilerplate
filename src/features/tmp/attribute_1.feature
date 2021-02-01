Feature: Test the attributes of a given element
Background: 
Given I open the site "/"
Scenario: The attribute "role" of a element should be "note"
Then I expect that the attribute "role" from element "#attributeComparison" is "note"
