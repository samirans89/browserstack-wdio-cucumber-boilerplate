Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select the first option of a select element
When I select the 1st option for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(1)" is not selected
When I select the 0th option for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(1)" is selected
