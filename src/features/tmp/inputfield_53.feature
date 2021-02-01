Feature: Test input fields on a page
Background: 
Given I open the site "/"
Then I expect that element "#testInput" not contains any text
Scenario: Clear the content of a input field
When I set "test" to the inputfield "#testInput"
Then I expect that element "#testInput" contains any text
And I expect that element "#testInput" contains the text "test"
When I clear the inputfield "#testInput"
Then I expect that element "#testInput" not contains any text
