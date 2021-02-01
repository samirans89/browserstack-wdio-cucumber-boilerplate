Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select a option by its visible text using XPath selectors
Then I expect that element "#selectElementTest option:nth-child(3)" is not selected
When I select the option with the text "Option #3" for element "//select[@id='selectElementTest']"
Then I expect that element "#selectElementTest option:nth-child(3)" is selected
