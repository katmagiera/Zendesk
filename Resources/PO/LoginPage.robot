*** Settings ***
Documentation  Keywords necessary to successful login into Zendesk Sell
Library  SeleniumLibrary
Resource  ../Common.robot


*** Variables ***
${LOGIN_SELECTOR}  css= input[id='user_email']
${PASS_SELECTOR}  css= input[id='user_password']


*** Keywords ***
Navigate To URL
    go to  ${URL}

Open login page and verify if it is loaded
    Navigate To URL
    Verify Login Page Loaded

Enter user login
    input text  ${LOGIN_SELECTOR}  ${LOGIN}

Enter user password
    input password  ${PASS_SELECTOR}  ${PASS}

Login to Zendesk Sell
    Enter user login
    Enter user password
    Click button  Sign in
    Verify if Dashboard is loaded


