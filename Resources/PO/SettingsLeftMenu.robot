*** Settings ***
Documentation  Keywords which are necessary to navigate in Settings pages
Library  SeleniumLibrary
Resource  ../Common.robot

*** Variables ***
${SETTINGS_LEAD}  css= li[class='leads']

*** Keywords ***
Open Leads settings
    click element  ${SETTINGS_LEAD}
    Verify if Leads settings are displayed