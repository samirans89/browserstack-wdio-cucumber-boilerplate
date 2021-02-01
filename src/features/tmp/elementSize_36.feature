Feature: Test the width and height of a given element
Background: 
Given I open the site "/"
Scenario: The element #square100x100 whould have a width of 100px
Then I expect that element "#square100x100" is 100px broad
