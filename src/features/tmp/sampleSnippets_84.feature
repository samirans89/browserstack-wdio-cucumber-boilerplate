Feature: Sample Snippets test
Scenario: check attribute
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the attribute "data-foundby" from element "#newWindow" is "partial link text"
And the attribute "data-foundby" from element "#newWindow" is not "something else"
Then I expect that the attribute "data-foundby" from element "#newWindow" is "partial link text"
And I expect that the attribute "data-foundby" from element "#newWindow" is not "something else"
