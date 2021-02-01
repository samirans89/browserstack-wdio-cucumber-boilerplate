Feature: Sample Snippets test
Scenario: check text content
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element "#secondPageLink" contains the text "two"
And the element "#secondPageLink" not contains the text "andere linktext"
Then I expect that element "#secondPageLink" contains the text "two"
And I expect that element "#secondPageLink" not contains the text "anderer linktext"
