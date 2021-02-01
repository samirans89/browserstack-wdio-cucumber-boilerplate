@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if prompt has text entered
Given a prompt is not opened
And the element "#promptResult" not contains any text
When I click on the element "#openPrompt"
Then I expect that a prompt is opened
When I enter "test 1 2 3" into the prompt
And I accept the prompt
Then I expect that a prompt is not opened
And I expect that element "#promptResult" contains the text "test 1 2 3"
