Feature: Sample Snippets test
Scenario: click on link
Given the title is not "two"
And I open the url "http://webdriverjs.christian-bromann.com/"
When I click on the link "two"
Then I expect that the title is "two"
