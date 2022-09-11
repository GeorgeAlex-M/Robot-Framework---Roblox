*** Settings ***
Resource  ../../Resources/Hybrid.Common.robot
Resource  ../../Resources/Hybrid.SignIn.Web.Gui.robot
Resource  ../../Resources/Hybrid.SelectLanguage.Web.Gui.robot
Resource  ../../Resources/Hybrid.EnterGame.Web.Gui.robot
Test Setup  Begin Web Test
#Test Teardown  End Web Test

Documentation     Feature 1_0 (user story): Sign In
...
...               As a roblox player
...               I would like to be able to sign in
...               So that I can see my personal profile page

*** Test Cases ***
User can enter game   # Test Procedure 1 ...etc
    [Documentation]  Scenario 1_0 - This test procedure goes through the user signin flow
    [Tags]  SignIn TP_1
    Given user browses to roblox.com sign in page           # Test Case 1
    And user selects the username textbox
    And user writes his username
    And user writes his password
    And user selects the signin button
    And user should be redirected to Home Roblox
    And user browses to batman is better than superman web page
    And user scrolls down
    And user selects language switcher
    When user selects custom language
    Then user selects the play button