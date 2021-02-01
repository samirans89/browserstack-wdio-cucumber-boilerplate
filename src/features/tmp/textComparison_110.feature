Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Elements containing text inside a child element
Then I expect that element "#textComparison1" contains the same text as element "#textComparison7"
