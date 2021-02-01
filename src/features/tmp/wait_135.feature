Feature: Test waiting for actions
Background: 
Given I open the url "http://localhost:8080/"
And I pause for 1000ms
Scenario: Test if element not exists
When I click on the button "#waitForCreateBtn"
And I pause for 1000ms
Then I expect that element "#waitForCreateElement > span" does exist
When I click on the button "#waitForCreateBtn"
Then I wait on element "#waitForCreateElement > span" for 1000ms to not exist
