*** Settings ***
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
# user opens his browser
    # SignIn.Begin Web Test

user browses to roblox.com sign up page
    SignIn.Go to roblox.com sign up page

user interacts with cookies popup if displayed
    SignIn.Check if cookies popup is displayed and interact with it

user selects the login button
    SignIn.Select the login button

user selects the username textbox
    SignIn.Select the username textbox

user writes his username
    SignIn.Write username

user writes his password
    SignIn.Write password

user selects the signin button
    SignIn.Select signin button

user should be redirected to Home Roblox
    SignIn.Check redirected page
