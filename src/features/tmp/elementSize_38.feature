Feature: Test the width and height of a given element
Background: 
Given I open the site "/"
Scenario: The element #square100x100 whould not have a width of 101px
Then I expect that element "#square100x100" is not 101px broad
