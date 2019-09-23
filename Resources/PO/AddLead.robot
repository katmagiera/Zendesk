*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADD_FIRSTNAME}  css= input[placeholder='First Name']
${ADD_LASTNAME}  css= input[placeholder='Last Name']
${SAVE_AND_DETAILS}  css= button[data-action='save-and-visit']
${NAME}  Jan
${SURNAME}  Nowak

*** Keywords ***
Fill leads name and last name
    Enter lead name
    Enter lead last name


Enter lead name
    input text  ${ADD_FIRSTNAME}  ${NAME}


Enter lead last name
    input text  ${ADD_LASTNAME}  ${SURNAME}

Save changes and go to details
    Click button  ${SAVE_AND_DETAILS}

