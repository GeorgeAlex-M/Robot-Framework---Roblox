*** Settings ***
Resource  ../../Resources/MsgInbox.Web.Gui.robot

Documentation     Feature 2_0 (user story): Who can message me?
...
...               As a roblox user
...               I would like non-friends users to not be able to send me message mails
...               So that I can communicate only to my friends
...
...
...               Feature 2_1 (user story): Send a mail message
...
...               As a roblox user
...               I would like to send a message mail to my friend
...               So that we can communicate through mails

*** Test Cases ***
User cant send message mail to non-friends
    [Documentation]  Scenario 2_0 - This test procedure attempts to send a message to a non-friend
    [Tags]  MsgInbox TP_1
    Given user interacts with hamburger icon if displayed   # Test Case 1
    And user selects the messages button                    # Test Case 2 ...etc
    And user selects the first message within inbox
    And user selects the reply button
    And user writes his message
    When user selects send reply button
    #    And user closes the error banner popup
    Then the unsuccessful sent banner should appear

User can send message mail to other users   # Test Procedure 1 ...etc
    [Documentation]  Scenario 2_1 - This test procedure attempts to send a message to a friend
    [Tags]  MsgInbox TP_2
    Given user selects to go back to the previous page
    And user selects the second message within inbox
    And user selects the reply button
    And user writes his message with different test data
    And user scrolls down the web page
    When user selects send reply button
    Then the succesfully sent banner should appear