Feature: Test if new windows/tabs are being opened
Background: 
Given I have closed all but the first tab
And I open the site "/"
Scenario: Test if we can close the last opened window/tab
When I click on the element "#linkNewWindow"
Then I expect a new window has been opened
When I close the last opened window
Then I expect a new window has not been opened
