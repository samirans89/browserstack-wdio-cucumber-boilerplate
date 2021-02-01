Feature: Test input fields on a page
Background: 
Given I open the site "/"
Then I expect that element "#testInput" is empty
Scenario: Set the content of a input field
When I set "test" to the inputfield "#testInput"
Then I expect that element "#testInput" is not empty
And I expect that element "#testInput" contains the text "test"
