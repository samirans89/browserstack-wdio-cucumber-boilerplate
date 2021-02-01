Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select a option by its name
Then I expect that element "#selectElementTest option:nth-child(2)" is not selected
When I select the option with the name "secondOption" for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(2)" is selected
