#${TEST_DATA}  if 999 % 2 == 0 then '-999' '+999' end ; base64(str) ; code("CURRENT_TIMESTAMP") ; concat(first_name, ' ', last_name) ; date('7/4/2015') ; digest(str, 'MD5|HMAC|RMD160|SHA1|SHA256|SHA384|SHA512', 'hex|base64') ; format(1.2, 3) => '1.200'

    # Retrieve
#    ${TEST DATA} =  Get File  D:/development/robot-scripts/Roblox/Resources/blns.txt  encoding=UTF-8  encoding_errors=strict

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Landing

Input Username
    [Arguments]    ${username}
    Input Text    id=login-username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=login-password    ${password}

Submit Credentials
    Click Button    xpath=/html/body/div[5]/div[2]/div[2]/div[1]/div/div[1]/div[1]/div/div/form/button

Welcome Page Should Be Open
    Title Should Be    Login

# Valid Login
#    [Documentation]  This is some basic info about the test
#    [Tags]  Smoke
#    Open Browser To Login Page
#    Input Username    rblxautomation
#    Input Password    Stayanonymous1
#    Submit Credentials
#    Welcome Page Should Be Open
#    [Teardown]    Close Browser