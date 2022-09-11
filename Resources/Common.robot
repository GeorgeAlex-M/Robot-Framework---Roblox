*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***
# On Startup
${BROWSER}  chrome
${URL}  about:blank

# TC_1
${LOGIN URL}  https://www.roblox.com/
${LOGIN USERNAME}  rblxautomation
${LOGIN PASSWORD}  xxxxxxxxxxxxxx

# TC_2
${RANDOM GENERATED DATA}  D:/development/robot-scripts/Roblox/Resources/GENERATED_TEST_DATA/blns.txt
${RANDOM_GENERATED_DATA2}  D:/development/robot-scripts/Roblox/Resources/GENERATED_TEST_DATA/blns2.txt
${WELCOME TITLE}  Home - Roblox

*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}

    # Retrieve random generated test data from text file
    ${TEST DATA} =  Get Binary File  ${RANDOM GENERATED DATA}
    ${TEST_DATA2} =  Get Binary File  ${RANDOM_GENERATED_DATA2}

    # Set test data as a global variable
    Set Global Variable  ${TEST DATA}
    Set Global Variable  ${TEST_DATA2}

End Web Test
    Close Browser