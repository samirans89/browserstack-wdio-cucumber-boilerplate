Feature: Test visibility of elements
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Visible elements to be displayed
Then I expect that element "#visible" is displayed
