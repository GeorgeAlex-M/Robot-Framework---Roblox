*** Settings ***
Resource  ../../Resources/Common.robot

*** Keywords ***
Interact with hamburger icon if displayed
    Sleep  3s
    ${HAMBURGER_NAVIGATION_MENU} =  Run Keyword And Return Status    Element Should Be Visible   xpath=/html/body/div[5]/div[1]/div[1]/div/div[1]/div[1]/button[2]
    Run Keyword If    ${HAMBURGER_NAVIGATION_MENU}    Click Button   xpath=/html/body/div[5]/div[1]/div[1]/div/div[1]/div[1]/button[2]
ELSE    Wait Until Element Is Visible  xpath=/html/body/div[5]/div[1]/div[1]/div/div[1]/div[1]/button[2]

Select the messages button
    Sleep  2s
    Click Link  xpath=/html/body/div[5]/div[1]/div[2]/div/div/div[1]/div[2]/div/div/div/ul/li[3]/a

Select the message in the first row
    Sleep  3s
    Click Element  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div/div/div[2]/div[3]/div/span

Select the reply button
    Click Element  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[1]/div/div/div[1]/button

Write random generated test data
    Sleep  2s
    Input Text  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div[3]/textarea  ${TEST DATA}

Write random generated test data 2
    Sleep  2s
    Input Text  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div[3]/textarea  ${TEST_DATA2}

Select the send reply button
    Sleep  2s
    Click Button  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div[3]/div/div[1]/button

# Close error banner popup  # Close banner (The recipient's privacy settings prevent you from sending this message.)
#    Click Button  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/system-feedback/div/div/div/span[2]

Select go back to previous page
    Sleep  3s
    Click Element  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[1]/div/div/button/span

Select the message in the second row
    Sleep  2s
    Click Element  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div/div/div[3]/div[3]/div/div/span[1]

Scroll down the web page
    Sleep  2s
    Execute Javascript  window.scrollTo(0, window.scrollY+100)

Check if banner appears
    Wait Until Element Is Visible  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/system-feedback/div/div/div/span

Check if unsuccessful banner appears
    Wait Until Element Is Visible  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/system-feedback/div/div/div/span[1]
