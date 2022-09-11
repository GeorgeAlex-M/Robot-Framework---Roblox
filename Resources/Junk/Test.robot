*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Variables ***

*** Test Cases ***
Retrieve Test Data
#    ${TEST DATA} =  Get File  D:/development/robot-scripts/Roblox/Resources/blns.txt  encoding=UTF-8  encoding_errors=strict
    ${TEST DATA} =  Get Binary File  D:/development/robot-scripts/Roblox/Resources/blns.txt
    Set Global Variable  ${TEST DATA}

Write random generated test data
    Input Text  xpath=/html/body/div[5]/div[2]/div[2]/div[2]/div/ui-view/div/div[2]/div/div[3]/textarea  ${TEST DATA}

*** Keywords ***
