Feature: Test the page structure
Background: 
Given I open the site "/"
Scenario: Test if the page has only one H1 element
Given there is no element "h1:nth-child(n+2)" on the page
