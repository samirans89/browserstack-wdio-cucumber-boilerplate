Feature: Test visibility of elements
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Element should become displayed
Given the element "#makeVisible" is not displayed
When I click on the element "#btnMakeVisible"
Then I expect that element "#makeVisible" becomes displayed
