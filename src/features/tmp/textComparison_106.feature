Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Elements containing different text
Then I expect that element "#textComparison1" not contains the same text as element "#textComparison2"
