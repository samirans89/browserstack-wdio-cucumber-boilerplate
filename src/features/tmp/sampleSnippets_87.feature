Feature: Sample Snippets test
@Pending
Scenario: check offset
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".red" is positioned at 15px on the x axis
And the element ".red" is positioned at 242px on the y axis
And the element ".red" is not positioned at 16px on the x axis
And the element ".red" is not positioned at 243px on the y axis
Then I expect that element ".red" is positioned at 15px on the x axis
And I expect that element ".red" is positioned at 242px on the y axis
And I expect that element ".red" is not positioned at 16px on the x axis
And I expect that element ".red" is not positioned at 243px on the y axis
