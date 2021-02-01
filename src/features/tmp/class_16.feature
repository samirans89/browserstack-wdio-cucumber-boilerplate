Feature: Test if a given element has a certain CSS class
Background: 
Given I open the site "/"
Scenario: Element #classTest should also have the class "class2"
Then I expect that element "#classTest" has the class "class2"
