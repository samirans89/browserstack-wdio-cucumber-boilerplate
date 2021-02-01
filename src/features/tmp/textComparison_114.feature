Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Input containing different text
Then I expect that element "#valueDoesNotContainCucumber" not contains the text "This input contains cucumber"
