@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if confirm is canceled
Given a confirmbox is not opened
And the element "#confirmResult" not contains any text
When I click on the element "#openConfirm"
Then I expect that a confirmbox is opened
And I expect that a alertbox contains the text "I am a confirm box!"
When I dismiss the confirmbox
Then I expect that a confirmbox is not opened
And I expect that element "#confirmResult" contains the text "false"
