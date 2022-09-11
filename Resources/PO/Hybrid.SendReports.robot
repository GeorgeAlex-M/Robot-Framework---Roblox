*** Settings ***
Resource  ../../Resources/Hybrid.Common.robot

*** Variables ***
${SONG_NAME}=     Red Sun In the Sky

*** Test Cases ***
Open roblox and send reports
    Navigate to reports panel

*** Keywords ***
Navigate to reports panel
#    ${apps}  Get Open Applications

#    ${app1}    Open Executable   RobloxPlayerBeta.exe  Roblox
    Switch To Application   RobloxPlayerBeta.exe  Roblox
    Send Keys    keys={ESC}{TAB}{TAB}
    Sleep    2s
    Click    coordinates:960,535  shift
    Sleep    2s
    Type text    1