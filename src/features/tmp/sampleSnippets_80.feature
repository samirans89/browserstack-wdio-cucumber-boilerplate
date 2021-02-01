Feature: Sample Snippets test
Scenario: check visibility
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".btn1" is displayed
And the element ".btn1_clicked" is not displayed
Then I expect that element ".btn1" is displayed
And I expect that element ".btn1_clicked" is not displayed
