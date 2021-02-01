Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select a option by its value
Then I expect that element "#selectElementTest option:nth-child(3)" is not selected
When I select the option with the value "third" for element "#selectElementTest"
Then I expect that element "#selectElementTest option:nth-child(3)" is selected
