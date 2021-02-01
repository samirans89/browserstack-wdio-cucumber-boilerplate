@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if prompt is opened & dismissed
Given a prompt is not opened
And the element "#promptResult" not contains any text
When I click on the element "#openPrompt"
Then I expect that a prompt is opened
And I expect that a alertbox contains the text "I am a prompt!"
When I dismiss the prompt
Then I expect that a prompt is not opened
And I expect that element "#promptResult" contains the text "null"
