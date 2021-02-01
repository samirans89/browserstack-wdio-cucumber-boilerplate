Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Elements containing no text
Then I expect that element "#textComparison4" contains the same text as element "#textComparison5"
