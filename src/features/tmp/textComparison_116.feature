Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Button contains text
Then I expect that button "button[id='waitForCheckedBtn']" contains the text "Check"
