Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select the fourth option of a select element
Then I expect that element "#selectElementTest option:nth-child(4)" is not selected
When I select the 3th option for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(4)" is selected
