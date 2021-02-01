@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if alert is opened accepted
Given a alertbox is not opened
When I click on the element "#openAlert"
Then I expect that a alertbox is opened
And I expect that a alertbox contains the text "I am a alert box!"
When I accept the alertbox
Then I expect that a alertbox is not opened
