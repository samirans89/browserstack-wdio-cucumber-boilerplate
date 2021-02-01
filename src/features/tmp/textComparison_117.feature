Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Button not contains the text
Then I expect that button "button[id='waitForCheckedBtn']" not contains the text "Not checked"
