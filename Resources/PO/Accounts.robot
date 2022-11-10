*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
# On Startup
# TP_1
${BROWSER}  chrome
${URL}  about:blank
${LOGIN URL}  https://www.roblox.com/

# TP_2
${WELCOME TITLE}  Home - Roblox
${SIGN UP TITLE}  Roblox

# TP_3
${LOGIN EMAIL}  gmanea@roblox.com
# ${LOGIN USERNAME}  xxxxxxxx

*** Keywords ***
# TP_1
Open that browser
    Open Browser  ${URL}  ${BROWSER}
    Sleep  3s

Go to roblox.com
    Go to  ${LOGIN URL}
    Sleep  3s

# TP_2
Cookies popup
    ${COOKIES_POPUP} =  Run Keyword And Return Status    Element Should Be Visible   xpath=/html/body/div[5]/div/div[1]/div[2]/div/div/button[2]
    Run Keyword If    ${COOKIES_POPUP}    Click Button      xpath=/html/body/div[5]/div/div[1]/div[2]/div/div/button[2]
...     ELSE  Wait Until Element Is Visible  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[1]/select

Month
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[1]/select
    Sleep  1s
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[1]/select/option[2]
    Sleep  1s

Day
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[2]/select
    Sleep  1s
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[2]/select/option[2]
    Sleep  1s

Year
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[3]/select
    Sleep  1s
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[1]/div/div/div[3]/select/option[20]
    Sleep  1s

Username
    Generate String
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/input
    Input Text  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/input  ${LOGIN USERNAME}
    Sleep  1s

Generate String
    ${LOGIN USERNAME} =  Generate Random String  12
    Set Global Variable  ${LOGIN USERNAME}
    Log To Console  [TEST DATA - LOGIN USERNAME] ${LOGIN USERNAME}

Get Username Appropriateness
    # If the username is not appropriate
    ${USERNAME_APPROPRIATENESS} =  Run Keyword And Return Status    Element Should Be Visible   xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/input[contains(@class, "ng-invalid")]
    Set Global Variable  ${USERNAME_APPROPRIATENESS}
    Log To Console  [INFO] Username appropriateness = ${USERNAME_APPROPRIATENESS}

Check Username
    Get Username Appropriateness
    # Then run this loop to change the username ; until it is appropriate
    WHILE    ${USERNAME_APPROPRIATENESS} == True
        # Generate new string for username
        Generate String
        Sleep  1s   # [IMPORTANT] !Slow things down inside the loop!
        # Then click the close popup element ; else
        Input Text  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/input  ${LOGIN USERNAME}    #  clear=true (it clears by default)
        Sleep  2s   # [IMPORTANT] !Slow things down inside the loop!
        Get Username Appropriateness
        Sleep  2s   # [IMPORTANT] !Slow things down inside the loop!
    END

Password
    ${LOGIN PASSWORD} =  Generate Random String  12
    Log To Console  [TEST DATA - LOGIN PASSWORD] ${LOGIN PASSWORD}
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[4]/input
    Input Text  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[4]/input  ${LOGIN PASSWORD}
    Sleep  1s

Select Gender
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/div[5]/div/div/button[2]/div
    Sleep  1s

Select Sign Up
    Click Element  xpath=/html/body/div[4]/div/div[1]/section/div/div[2]/div[1]/div[2]/div/div[1]/div/div[2]/button
    Sleep  5s

Verification challenge
    # If the verification popup challenge is visible
    ${VERIFICATION_CHALLENGE} =  Run Keyword And Return Status    Element Should Be Visible   xpath=/html/body/div[9]/div[2]/div
    # Then click the close popup element ; else
    Run Keyword If    ${VERIFICATION_CHALLENGE}  Log To Console  [WARNING] Verification challenge triggered! Accounts left to create = ${ACCOUNTS} ... Abording!
...     ELSE  Log To Console  [OK] Verification challenge is not present. Continuing the script...
    Sleep  2s

Home Roblox
    Wait Until Element Is Visible  xpath=/html/body/div[5]/div[1]/div[1]/div/div[2]/div[2]/ul/li[4]/button/span/span[1]
    Title Should Be  ${WELCOME TITLE}

# TP_3
Wheel icon
    Click Element  xpath=/html/body/div[5]/div[1]/div[1]/div/div[2]/div[2]/ul/li[4]/button/span/span[1]
    Sleep  1s

Logout
    Click Element  xpath=/html/body/div[5]/div[1]/div[1]/div/div[2]/div[2]/ul/li[4]/div/div[2]/div/ul/li[4]/a
    Sleep  1s

#Your Email
#    Click Element  xpath=/html/body/div[21]/div[2]/div/div/div[2]/input
#    Input Text  xpath=/html/body/div[21]/div[2]/div/div/div[2]/input  ${LOGIN EMAIL}
#    Sleep  1s

Finish Setup
    Click Element  xpath=/html/body/div[21]/div[2]/div/div/div[3]/div/button[1]
    Sleep  1s

Accept Risk of Losing Account and log Out
    Click Element  xpath=/html/body/div[21]/div[2]/div/div/div[3]/div/button[2]
    Sleep  2s

Redirect to Roblox Sign Up page
    Title Should Be  ${SIGN UP TITLE}

Sign Up
    Click Element  xpath=/html/body/div[5]/div[1]/div[1]/div/div[2]/div[2]/ul/li[1]/a
    Sleep  3s
