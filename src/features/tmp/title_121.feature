Feature: Test the page title
Background: 
Given I open the site "/"
Scenario: Test if the demo app has the title "DEMO APP"
Given the title is "DEMO APP"
Then I expect that element "h1" contains the same text as element ".subtitle"
