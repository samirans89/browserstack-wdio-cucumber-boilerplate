Feature: Sample Snippets test
Scenario: click on button
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element ".btn1_clicked" is not displayed
When I click on the button ".btn1"
Then I expect that element ".btn1_clicked" is displayed
