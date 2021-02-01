Feature: Sample Snippets test
Scenario: open sub page of weburl
Given the page url is not "http://webdriverjs.christian-bromann.com/two.html"
And I open the url "http://webdriverjs.christian-bromann.com/"
Then I expect that the url is "http://webdriverjs.christian-bromann.com/"
And I expect that the url is not "http://google.com"
