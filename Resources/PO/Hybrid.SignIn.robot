*** Settings ***
Resource  ../../Resources/Hybrid.Common.robot

*** Keywords ***
Go to roblox.com sign in page
    Sleep  2s
    Go to  ${LOGIN URL}

Select the username textbox
    Sleep  3s
    Wait Until Element Is Visible  xpath=/html/body/div[4]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/div[1]/input
    Click Button  xpath=/html/body/div[4]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/div[1]/input

Write username
    Input Text  id=login-username  ${LOGIN USERNAME}

Write password
    Sleep  2s
    Input Text  id=login-password  ${LOGIN PASSWORD}

Select signin button
    Click Button  xpath=/html/body/div[4]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/button

Check redirected page  # Check if user is redirected to Home Roblox page
    Sleep  3s
    Title Should Be  ${WELCOME TITLE}