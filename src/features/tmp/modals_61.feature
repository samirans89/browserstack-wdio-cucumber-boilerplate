@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if confirm is accepted
Given a confirmbox is not opened
And the element "#confirmResult" not contains any text
When I click on the element "#openConfirm"
Then I expect that a confirmbox is opened
When I accept the confirmbox
Then I expect that a confirmbox is not opened
And I expect that element "#confirmResult" contains the text "true"
