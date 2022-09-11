*** Settings ***
Resource  ../../Resources/Hybrid.Common.robot

*** Keywords ***
Select the play button
    Sleep  3s
    Wait Until Element Is Visible  xpath=/html/body/div[4]/div[2]/div[2]/div[2]/div[3]/div[2]/div[2]/div/button/span
    Click Element  xpath=/html/body/div[4]/div[2]/div[2]/div[2]/div[3]/div[2]/div[2]/div/button/span