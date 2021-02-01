Feature: Test if new windows/tabs are being opened
Background: 
Given I have closed all but the first tab
And I open the site "/"
Scenario: Test if a window/tab from "google.com" has the correct url
When I click on the element "#linkNewWindow"
Then I expect the url "http://example.com/" is opened in a new window
