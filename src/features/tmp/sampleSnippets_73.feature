Feature: Sample Snippets test
Scenario: set value to an input element
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element "//html/body/section/form/input[1]" not contains the text "bc"
When I set "bc" to the inputfield "//html/body/section/form/input[1]"
Then I expect that element "//html/body/section/form/input[1]" contains the text "bc"
