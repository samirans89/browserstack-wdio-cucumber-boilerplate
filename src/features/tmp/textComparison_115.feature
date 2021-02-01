Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Input containing the same text
Then I expect that element "#valueDoesContainCucumber" contains the text "This input contains cucumber"
