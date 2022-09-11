*** Settings ***
Resource  ../../Resources/Common.robot

*** Keywords ***
Go to roblox.com sign up page
    Sleep  2s
    Go to  ${LOGIN URL}

Check if cookies popup is displayed and interact with it  # Is Cookie options popup present? If not, then wait for the Log In button
    ${COOKIES_POPUP} =  Run Keyword And Return Status    Element Should Be Visible   xpath=/html/body/div[5]/div/div[1]/div[2]/div/div/button[2]
    Run Keyword If    ${COOKIES_POPUP}    Click Button      xpath=/html/body/div[5]/div/div[1]/div[2]/div/div/button[2]
ELSE  Wait Until Element Is Visible  xpath=/html/body/div[4]/div/div[1]/section/div/div[1]/div/a

Select the login button
    Sleep  2s
    Click Link  xpath=/html/body/div[4]/div/div[1]/section/div/div[1]/div/a

Select the username textbox
    Sleep  3s
    Wait Until Element Is Visible  xpath=/html/body/div[5]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/div[1]/input
    Click Button  xpath=/html/body/div[5]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/div[1]/input

Write username
    Input Text  id=login-username  ${LOGIN USERNAME}

Write password
    Sleep  2s
    Input Text  id=login-password  ${LOGIN PASSWORD}

Select signin button
    Click Button  xpath=/html/body/div[5]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/button

Check redirected page  # Check if user is redirected to Home Roblox page
    Sleep  3s
    Title Should Be  ${WELCOME TITLE}