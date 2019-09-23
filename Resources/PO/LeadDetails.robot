*** Settings ***
Documentation  Keywords to check Lead Details Page
Library  SeleniumLibrary

*** Variables ***
${STATUS_LEAD_DETAILS}  css= span[class='lead-status']
${STATUS_FILTER}  css= div[data-filter-id='status'] [class='_20---CloudFilter--attributesContainer']
${NEW_STATUS}  css= div[data-item-index='1']

*** Keywords ***
Check if status is New
    Wait Until Element Contains  ${STATUS_LEAD_DETAILS}  New

Check if status changed
    click element  ${STATUS_FILTER}
    Wait Until Element Contains  ${NEW_STATUS}  NewStatus