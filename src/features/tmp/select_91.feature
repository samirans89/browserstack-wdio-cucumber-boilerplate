Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select the second option of a select element
Then I expect that element "#selectElementTest option:nth-child(2)" is not selected
When I select the 1st option for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(2)" is selected
