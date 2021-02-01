Feature: Test select elements
Background: 
Given I open the site "/"
Scenario: Test if we can select a option by its index using XPath selectors
Then I expect that element "#selectElementTest option:nth-child(4)" is not selected
When I select the 3rd option for element "//select[@id='selectElementTest']"
Then I expect that element "#selectElementTest option:nth-child(4)" is selected
