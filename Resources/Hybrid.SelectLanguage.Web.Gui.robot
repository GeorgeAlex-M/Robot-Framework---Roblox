*** Settings ***
Resource  ../Resources/PO/Hybrid.SelectLanguage.robot

*** Keywords ***
user browses to batman is better than superman web page
    Hybrid.SelectLanguage.Go to batman is better than superman web page

user scrolls down
    Hybrid.SelectLanguage.Scroll down the web page

user selects language switcher
    Hybrid.SelectLanguage.Select language switcher

user selects custom language
    Hybrid.SelectLanguage.Select custom language

