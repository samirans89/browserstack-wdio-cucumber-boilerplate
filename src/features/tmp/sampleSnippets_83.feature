Feature: Sample Snippets test
Scenario: check input content
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element "//html/body/section/form/input[1]" contains the text "a"
And the element "//html/body/section/form/input[1]" not contains the text "aa"
Then I expect that element "//html/body/section/form/input[1]" contains the text "a"
And I expect that element "//html/body/section/form/input[1]" not contains the text "aa"
