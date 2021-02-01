Feature: Test text contents of elements
Background: 
Given I open the site "/"
Scenario: Button is not empty
Then I expect that button "button[id='waitForCheckedBtn']" is not empty
