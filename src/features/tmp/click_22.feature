Feature: Test how clicks are handled on a certain element
Background: 
Given I open the site "/"
Scenario: Double click on the element #toggleBackground should make the elemnt blue
When I doubleclick on the element "#toggleBackground"
