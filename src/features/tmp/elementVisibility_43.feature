Feature: Test visibility of elements
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Element should become not displayed
Given the element "#makeInvisible" is displayed
When I click on the element "#btnMakeInvisible"
Then I expect that element "#makeInvisible" becomes not displayed
