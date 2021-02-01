Feature: Test if a given element has a certain CSS class
Background: 
Given I open the site "/"
Scenario: Element #classTest should not have the class "class3"
Then I expect that element "#classTest" does not have the class "class3"
