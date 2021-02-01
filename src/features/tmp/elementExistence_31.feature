Feature: Test existence of elements
Background: 
Given I open the site "/"
Scenario: Existing element check
Then I expect that element "#exisiting" does exist
