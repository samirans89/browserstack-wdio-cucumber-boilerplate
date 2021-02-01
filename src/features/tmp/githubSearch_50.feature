Feature: Github test
Scenario: search for webdriverio repository
Given I open the url "https://github.com/search"
And the element "[placeholder='Search GitHub']" not contains any text
And I clear the inputfield "[placeholder='Search GitHub']"
And I add "webdriverio" to the inputfield "[placeholder='Search GitHub']"
When I press "Enter"
Then I expect that element ".header-search-input" contains the text "webdriverio"
And I expect that container ".repo-list-item:first-child" contains the text "Next-gen browser and mobile automation test framework for Node.js"
