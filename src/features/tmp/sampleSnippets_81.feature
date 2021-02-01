Feature: Sample Snippets test
Scenario: compare texts
Given I open the url "http://webdriverjs.christian-bromann.com/"
And the element "#secondPageLink" contains the same text as element "#secondPageLink"
And the element "#secondPageLink" contains not the same text as element "#githubRepo"
Then I expect that element "#secondPageLink" contains the same text as element "#secondPageLink"
And I expect that element "#secondPageLink" not contains the same text as element "#githubRepo"
