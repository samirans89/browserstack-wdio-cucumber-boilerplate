Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Elements containing text with encoded strings
Then I expect that element "#textComparison8" contains the same text as element "#textComparison9"
