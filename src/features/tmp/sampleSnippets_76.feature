Feature: Sample Snippets test
Scenario: wait for element
Given I open the url "http://webdriverjs.christian-bromann.com/"
And there is no element ".lateElem" on the page
Then I wait on element ".lateElem" for 5000ms to be displayed
