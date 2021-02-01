Feature: Sample Snippets test
Scenario: query title
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the title is "WebdriverJS Testpage"
And the title is not "Other title"
Then I expect that the title is "WebdriverJS Testpage"
And I expect that the title is not "Other title"
