Feature: Sample Snippets test
Scenario: drag n drop
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".searchinput" not contains the text "Dropped!"
When I drag element "#overlay" to element ".red"
Then I expect that element ".searchinput" contains the text "Dropped!"
