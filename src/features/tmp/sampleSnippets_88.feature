Feature: Sample Snippets test
Scenario: check selected
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the checkbox ".checkbox_notselected" is not checked
When I click on the element ".checkbox_notselected"
Then I expect that checkbox ".checkbox_notselected" is checked
