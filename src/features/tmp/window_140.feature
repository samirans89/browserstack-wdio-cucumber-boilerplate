Feature: Test if new windows/tabs are being opened
Background: 
Given I have closed all but the first tab
And I open the site "/"
Scenario: Test all opened windows/tabs are now closed
Given the page url is "http://localhost:8080/"
Then I expect a new window has not been opened
