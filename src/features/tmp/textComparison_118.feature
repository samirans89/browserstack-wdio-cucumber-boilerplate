Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Element containing different text
Then I expect that element "button[id='waitForCheckedBtn']" not contains the text "This element contains cucumber"
