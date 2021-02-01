Feature: Test waiting for actions
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Test if element becomes displayed
Given the element "#waitForVisibleElement" is not displayed
When I click on the button "#waitForVisibleBtn"
Then I wait on element "#waitForVisibleElement" for 1000ms to be displayed
