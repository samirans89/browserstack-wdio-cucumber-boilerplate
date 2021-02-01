Feature: Test how clicks are handled on a certain element
Background: 
Given I open the site "/"
Scenario: Double click on the button #toggleMessage should display another message
When I doubleclick on the button "#toggleMessage"
Then I expect that element "#message1" is not displayed
And I expect that element "#message2" is displayed
