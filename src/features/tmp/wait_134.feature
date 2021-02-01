Feature: Test waiting for actions
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Test if element becomes not displayed
When I click on the button "#waitForVisibleBtn"
And I pause for 1000ms
Then I expect that element "#waitForVisibleElement" is displayed
When I click on the button "#waitForVisibleBtn"
Then I wait on element "#waitForVisibleElement" for 1000ms to not be displayed
