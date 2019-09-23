*** Settings ***
Documentation  Keywords necessary to navigate in Leads Settings.
Library  SeleniumLibrary

*** Variables ***
${LEAD_STATUSES}  css= li a[href='#lead-status']
${EDIT_STATUS}  css= span[data-named-object-id="2609541"] button[class='btn btn-mini edit']
${STATUS_INPUT_FIELD}  css= input[value="New"]
${SAVE_BUTTON}  css= span[data-named-object-id="2609541"] button[class="btn btn-primary save"]
${OLD_STATUS}  css= span[data-named-object-id="2609541"] h4
${NEW_STATUS_TEXT}  NewStatus

*** Keywords ***

Open Lead statuses tab
    click element  ${LEAD_STATUSES}

Find Edit button to change name of status
    click button  ${EDIT_STATUS}

Input new text
    Clear Element Text  ${STATUS_INPUT_FIELD}
    input text  ${STATUS_INPUT_FIELD}  ${NEW_STATUS_TEXT}

Open "Lead statuses" and change status
    Open Lead statuses tab
    Find Edit button to change name of status
    Input new text
    click element  ${SAVE_BUTTON}


Change back status name
    Open Lead statuses tab
    Find Edit button to change name of status
    input text  css= input[value="NewStatus"]  New
    click element  ${SAVE_BUTTON}
