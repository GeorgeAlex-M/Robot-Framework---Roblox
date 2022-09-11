*** Settings ***
Resource  ../../Resources/Common.robot
Resource  ../../Resources/SignIn.Web.Gui.robot
Test Setup  Begin Web Test
#Test Teardown  End Web Test

Documentation     Feature 1_0 (user story): Sign In
...
...               As a roblox player
...               I would like to be able to sign in
...               So that I can see my personal profile page

*** Test Cases ***
User can sign in   # Test Procedure 1 ...etc
    [Documentation]  Scenario 1_0 - This test procedure goes through the user signin flow
    [Tags]  SignIn TP_1
    Given user browses to roblox.com sign up page           # Test Case 1
    And user interacts with cookies popup if displayed      # Test Case 2 ...etc
    And user selects the login button
    And user selects the username textbox
    And user writes his username
    And user writes his password
    When user selects the signin button
    Then user should be redirected to Home Roblox