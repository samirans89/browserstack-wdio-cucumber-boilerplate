Feature: Test input fields on a page
Background: 
Given I open the site "/"
Then I expect that element "#testInput" not contains any text
Scenario: Add content to a input field
When I set "test" to the inputfield "#testInput"
Then I expect that element "#testInput" contains any text
When I add " more tests" to the inputfield "#testInput"
Then I expect that element "#testInput" contains the text "test more tests"
