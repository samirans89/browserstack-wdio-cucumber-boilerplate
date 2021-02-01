Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Element containing the same text
Then I expect that element "#textDoesContainCucumber" contains the text "This element contains cucumber"
