Feature: Test how clicks are handled on a certain element
Background: 
Given I open the site "/"
Scenario: Single click on the element #toggleBackground should make the elemnt red
When I click on the element "#toggleBackground"
