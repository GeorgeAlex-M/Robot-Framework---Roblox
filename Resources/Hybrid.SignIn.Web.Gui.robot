*** Settings ***
Resource  ../Resources/PO/Hybrid.SignIn.robot

*** Keywords ***
# user opens his browser
    # SignIn.Begin Web Test

user browses to roblox.com sign in page
    Hybrid.SignIn.Go to roblox.com sign in page

user selects the username textbox
    Hybrid.SignIn.Select the username textbox

user writes his username
    Hybrid.SignIn.Write username

user writes his password
    Hybrid.SignIn.Write password

user selects the signin button
    Hybrid.SignIn.Select signin button

user should be redirected to Home Roblox
    Hybrid.SignIn.Check redirected page
