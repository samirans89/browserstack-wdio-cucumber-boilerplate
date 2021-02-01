Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select a option by its visible text
Then I expect that element "#selectElementTest option:nth-child(4)" is not selected
When I select the option with the text "Option #4" for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(4)" is selected
