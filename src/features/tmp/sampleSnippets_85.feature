Feature: Sample Snippets test
Scenario: check css attribute
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the css attribute "background-color" from element ".red" is "rgba(255,0,0,1)"
And the css attribute "background-color" from element ".red" is not "rgba(0,255,0,1)"
Then I expect that the css attribute "background-color" from element ".red" is "rgba(255,0,0,1)"
And I expect that the css attribute "background-color" from element ".red" is not "rgba(0,255,0,1)"
