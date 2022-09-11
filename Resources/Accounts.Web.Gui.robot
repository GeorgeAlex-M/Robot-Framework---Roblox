*** Settings ***
Resource  ../Resources/PO/Accounts.robot

*** Keywords ***
# TP_1
user opens his browser
    Accounts.Open that browser

goes to roblox.com
    Accounts.Go to roblox.com

# TP_2
user interacts with cookies popup if displayed
    Accounts.Cookies popup
selects a month
    Accounts.Month
selects a day
    Accounts.Day
selects a year
    Accounts.Year
writes an username
    Accounts.Username
the username is appropriate
    Accounts.Check Username
writes a password
    Accounts.Password
selects a gender
    Accounts.Select Gender
selects sign up
    Accounts.Select Sign Up
verification challenge has not triggered
    Accounts.Verification challenge
user should be redirected to Home Roblox
    Accounts.Home Roblox

# TP_3
user selects the wheel icon
    Accounts.Wheel icon
selects logout
    Accounts.Logout
#inserts his email
#    Accounts.Your Email
selects finish setup
    Accounts.Finish Setup
accepts the risk of losing account upon log out
    Accounts.Accept Risk of Losing Account and log Out
user should be redirected to Roblox Sign Up page
    Accounts.Redirect to Roblox Sign Up page
user selects the sign up button
    Accounts.Sign Up