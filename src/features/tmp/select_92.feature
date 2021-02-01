Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select the third option of a select element
Then I expect that element "#selectElementTest option:nth-child(3)" is not selected
When I select the 2nd option for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(3)" is selected
