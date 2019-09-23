*** Settings ***
Documentation  Keywords to navigate in always visible top bar
Library  SeleniumLibrary
Resource  ../Common.robot

*** Variables ***
${ADD_MENU}  css= div[class="_-6M--Icon--Icon vNy--Icon--size_s _1Cz--fontAwesomeFont--icon iJS--fontAwesomeIcons--caret-down _1Yh--margins--marginLeft_xs"]
${ADD_LEAD_LIST}  css= div[class="_-6M--Icon--Icon vNy--Icon--size_s Rrz--baseIconsNeueFont--icon _1EF--baseIconsNeueIcons--leads vM6--IconLabel--icon"]
${USER_MENU}  css= li[id='user-dd']
${SETTINGS}  css= a[href="/settings/profile"]
${LEAD_DETAILS}  css= a[id='nav-working-leads']



*** Keywords ***

Choose "Add new lead" from list
    Click element  ${ADD_MENU}
    Click element  ${ADD_LEAD_LIST}
    Verify if popup is displayed

Go to settings
    Click element  ${USER_MENU}
    Choose setting from list
    Verify is settings page is displayed

Choose setting from list
    Click element  ${SETTINGS}

Open lead details
    Click element  ${LEAD_DETAILS}
    Verify if lead details is loaded


