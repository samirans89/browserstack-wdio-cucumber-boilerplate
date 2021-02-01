Feature: Sample Snippets test
Scenario: check width and height
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".red" is 102px broad
And the element ".red" is 102px tall
And the element ".red" is not 103px broad
And the element ".red" is not 103px tall
Then I expect that element ".red" is 102px broad
And I expect that element ".red" is 102px tall
And I expect that element ".red" is not 103px broad
And I expect that element ".red" is not 103px tall
