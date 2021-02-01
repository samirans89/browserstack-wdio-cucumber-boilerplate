Feature: Test if new windows/tabs are being opened
Background: 
Given I have closed all but the first tab
And I open the site "/"
Scenario: Test if a link with target="_blank" does open a new window/tab
When I click on the element "#linkNewWindow"
Then I expect a new window has been opened
