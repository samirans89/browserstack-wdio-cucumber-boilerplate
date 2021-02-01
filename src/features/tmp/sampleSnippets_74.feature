Feature: Sample Snippets test
Scenario: clear value of input element
Given I open the url "http://webdriverjs.christian-bromann.com/"
When I set "test" to the inputfield "//html/body/section/form/input[1]"
And I clear the inputfield "//html/body/section/form/input[1]"
Then I expect that element "//html/body/section/form/input[1]" not contains any text
