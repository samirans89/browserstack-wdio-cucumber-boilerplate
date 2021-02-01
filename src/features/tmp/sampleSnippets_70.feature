Feature: Sample Snippets test
Scenario: double click on a button
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".btn1_dblclicked" is not displayed
When I doubleclick on the element ".btn1"
Then I expect that element ".btn1_dblclicked" is displayed
