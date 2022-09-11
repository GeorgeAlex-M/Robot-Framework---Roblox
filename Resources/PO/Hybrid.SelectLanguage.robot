*** Settings ***
Resource  ../../Resources/Hybrid.Common.robot

*** Keywords ***
Go to batman is better than superman web page
    Sleep  2s
    Go to  ${PRIMO_SERVER}

Scroll down the web page
    Sleep  2s
    Execute Javascript  window.scrollTo(0, window.scrollY+600)

Select language switcher
    Sleep  2s
    Wait Until Element Is Visible  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/button
    Click Element  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/button

Select custom language
    Sleep  2s
    Wait Until Element Is Visible  ${LANGUAGE}
    Click Element  ${LANGUAGE}
