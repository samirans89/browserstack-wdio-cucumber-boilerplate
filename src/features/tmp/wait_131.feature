Feature: Test waiting for actions
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Test if element to exist
Given there is no element "#waitForCreateElement > span" on the page
When I click on the button "#waitForCreateBtn"
Then I wait on element "#waitForCreateElement > span" for 1000ms
