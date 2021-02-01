Feature: Search Functionality

  Scenario Outline: Can find search results
    Given I open the url "<url>"
    When I type query as "<query>"
    Then I submit
    Then the title is "<outcome>"

    Examples:
    | url  | query  | outcome |
    | https://www.google.com | BrowserStack | BrowserStack - Google Search |
    | https://www.bing.com | BrowserStack | BrowserStack - Bing |
