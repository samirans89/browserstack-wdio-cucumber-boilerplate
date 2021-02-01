Feature: Test waiting for actions
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Test if element becomes enabled
Given the element "#waitForEnabledElement" is not enabled
When I click on the button "#waitForEnabledBtn"
Then I wait on element "#waitForEnabledElement" for 1000ms to be enabled
