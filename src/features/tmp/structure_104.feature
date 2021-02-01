Feature: Test the page structure
Background: 
Given I open the site "/"
Scenario: Test if the page has a H1 I expect its at the top of the page
Given there is an element "h1" on the page
When I scroll to element "h1"
Then I expect that element "h1" is displayed
