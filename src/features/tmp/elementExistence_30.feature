Feature: Test existence of elements
Background: 
Given I open the site "/"
Scenario: None existing element check
Then I expect that element "#noneExisting" does not exist
