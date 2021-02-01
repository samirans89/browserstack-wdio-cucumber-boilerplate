Feature: Test how clicks are handled on a certain element
Background: 
Given I open the site "/"
@Isolate
Scenario: Single click on the button #toggleMessage should display an message
When I click on the button "#toggleMessage"
Then I expect that element "#message1" is displayed
And I expect that element "#message2" is not displayed
