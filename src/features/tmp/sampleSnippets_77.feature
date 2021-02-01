Feature: Sample Snippets test
Scenario: wait for element using default wait time
Given I open the url "http://webdriverjs.christian-bromann.com/"
And there is no element ".lateElem" on the page
Then I wait on element ".lateElem" to be displayed
