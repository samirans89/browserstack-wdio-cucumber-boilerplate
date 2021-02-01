Feature: Test the position of a given element
Background: 
Given I open the site "/"
And I have a screen that is 800 by 600 pixels
And the element "#square100x100" is 100px broad
And the element "#square100x100" is 100px tall
When I scroll to element "#square100x100"
Scenario: The element #square100x100 is at XX pixels on the X axis
Then I expect that element "#square100x100" is positioned at 32.5px on the x axis
