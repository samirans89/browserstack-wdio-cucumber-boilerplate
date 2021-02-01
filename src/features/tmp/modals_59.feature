@Pending
Feature: Test modals
Background: 
Given I open the site "/"
@Pending
Scenario: Test if alert is opened & dismissed
Given a alertbox is not opened
When I click on the element "#openAlert"
Then I expect that a alertbox is opened
When I dismiss the alertbox
Then I expect that a alertbox is not opened
