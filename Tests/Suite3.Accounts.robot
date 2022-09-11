*** Settings ***
Resource  ../Resources/Accounts.Web.Gui.robot

Documentation     Automatically accounts generator
...
...               This automation script attempts to create accounts automatically
...               so that we can test the sign up feature or to help us generate
...               accounts faster than when doing it manually

*** Keywords ***
Sign Up
    Given user interacts with cookies popup if displayed
    And selects a month
    And selects a day
    And selects a year
    And writes an username
    And the username is appropriate
    And writes a password
    And selects a gender
    When selects sign up
    And verification challenge has not triggered
    Then user should be redirected to Home Roblox

Sign Out
    Given user selects the wheel icon
    And selects logout
#    And inserts his email
    And selects finish setup
    When accepts the risk of losing account upon log out
    Then user should be redirected to Roblox Sign Up page

Sign Up to Roblox
    Given user selects the sign up button