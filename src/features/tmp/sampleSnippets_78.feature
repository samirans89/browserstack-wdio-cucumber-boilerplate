Feature: Sample Snippets test
Scenario: pause
Given I open the url "http://webdriverjs.christian-bromann.com/"
And there is no element ".lateElem" on the page
When I pause for 3000ms
Then I expect that element ".lateElem" is displayed
