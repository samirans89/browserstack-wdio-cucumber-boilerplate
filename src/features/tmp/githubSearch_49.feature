Feature: Github test
Scenario: open URL
Given I open the url "https://github.com/"
Then I expect the url to contain "github.com"
And I expect that the title is "GitHub: Where the world builds software · GitHub"
