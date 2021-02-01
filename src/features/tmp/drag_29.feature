Feature: Test draggable elements
Background: 
Given I open the site "/"
And I have a screen that is 1024 by 768 pixels
When I scroll to element "#draggable"
Then I expect that element "#draggable" is positioned at 34.5px on the x axis
And I expect that element "#draggable" is positioned at 130px on the y axis
And I expect that element "#droppable" is positioned at 130px on the y axis
Scenario: Drag to dropzone
When I drag element "#draggable" to element "#droppable"
