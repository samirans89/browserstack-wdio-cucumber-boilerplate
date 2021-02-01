Feature: Test button press
Background: 
Given I open the site "/"
Scenario: Test if element responds to button press
Given the element "#testKeyResponse" not contains any text
When I press "b"
Then I expect that element "#testKeyResponse" not contains the text "65"
