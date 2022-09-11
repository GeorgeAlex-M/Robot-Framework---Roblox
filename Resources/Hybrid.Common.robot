*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RPA.Desktop.Windows

*** Variables ***
# TC_3 Utils
${DEUTSCH}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[1]
${ENGLISH}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[2]
${ESPANOL}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[3]
${FRANCAIS}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[4]
${ITALIANO}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[5]
${PORTUGUES}  xpath=/html/body/div[4]/footer/div/div/div[1]/div/div/ul/li[6]

# On Startup
${BROWSER}  chrome
${URL}  about:blank

# TC_1
${LOGIN URL}  https://www.sitetest1.robloxlabs.com/login
${LOGIN USERNAME}  lordnermal
${LOGIN PASSWORD}  lord1234

# TC_2
${WELCOME TITLE}  Roblox

# TC_3
${LANGUAGE}  ${PORTUGUES}     # Deutsch ; English ; Espanol ; Francais ; Italiano ; Portugues

# TC_4
${PRIMO_SERVER}  https://www.sitetest1.robloxlabs.com/games/2158061751/Batman-is-better-than-Superman

*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}

End Web Test
    Close Browser