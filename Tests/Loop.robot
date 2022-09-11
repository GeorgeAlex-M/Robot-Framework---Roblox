*** Settings ***
Resource  ../Resources/Accounts.Web.Gui.robot
Resource  ../Tests/Suite3.Accounts.robot

*** Variables ***
# TP_4
${ACCOUNTS}  10     # How many accounts shall the script create

*** Test Cases ***
Begin Web Test
    Given user opens his browser
    Then goes to roblox.com

Loop through test cases
    WHILE    ${ACCOUNTS} > 0
        Log To Console    Accounts left to create = ${ACCOUNTS}
        ${ACCOUNTS} =   Evaluate    ${ACCOUNTS} - 1
        Set Global Variable  ${ACCOUNTS}
        Suite3.Accounts.Sign Up
        Suite3.Accounts.Sign Out
        Suite3.Accounts.Sign Up to Roblox
    END