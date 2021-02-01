Feature: Test if new windows/tabs are being opened
Background: 
Given I have closed all but the first tab
And I open the site "/"
Scenario: Test if a default link does not open a new window/tab
When I click on the element "#linkSameWindow"
Then I expect a new window has not been opened
