*** Settings ***
Resource  ../Resources/PO/MsgInbox.robot

*** Keywords ***
user interacts with hamburger icon if displayed
    MsgInbox.Interact with hamburger icon if displayed

user selects the messages button
    MsgInbox.Select the messages button

user selects the first message within inbox
    MsgInbox.Select the message in the first row

user selects the reply button
    MsgInbox.Select the reply button

user selects send reply button
    MsgInbox.Select the send reply button

user writes his message
    MsgInbox.Write random generated test data

user writes his message with different test data
    MsgInbox.Write random generated test data 2

#user closes the error banner popup
#    MsgInbox.Close error banner popup

user selects to go back to the previous page
    MsgInbox.Select go back to previous page

user selects the second message within inbox
    MsgInbox.Select the message in the second row

user scrolls down the web page
    MsgInbox.Scroll down the web page

the succesfully sent banner should appear
    MsgInbox.Check if banner appears

the unsuccessful sent banner should appear
    MsgInbox.Check if unsuccessful banner appears
