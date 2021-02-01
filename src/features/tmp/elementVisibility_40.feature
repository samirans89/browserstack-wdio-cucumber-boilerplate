Feature: Test visibility of elements
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Invisible elements to be not displayed
Then I expect that element "#hidden" is not displayed
