Feature: Test visibility of elements
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Element outside the viewport
When I scroll to element "#footer"
Then I expect that element "h1" is not within the viewport
