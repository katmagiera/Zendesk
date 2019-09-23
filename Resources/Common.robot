*** Settings ***
Documentation  Open and close browser. Waitings keyword
Library  SeleniumLibrary

*** Variables ***
${ADD_LEAD}  css= div[class='_2-G--FilterableSections--headerTitle rs3--fonts--bold_l c0W--fonts--regular_l vz7--fonts--regular _3dG--fonts--bold']
${TOP_MENU}  css= div[class='_3-J--SmartlistsActions--SmartlistsActions']
${SETTINGS_LEADS_TAB}  css= a[href="#fields"]
${SETTINGS_PROFILE}  css= div[class="profile-page-container"]
${DASHBOARD}  css= div[class="_1Ln--DashboardPage--DashboardPage"]

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}

End Web Test
    Close All Browsers

Verify if popup is displayed
    wait until element is visible  ${ADD_LEAD}

Verify if lead details is loaded
    wait until element is visible  ${TOP_MENU}

Verify Login Page Loaded
    wait until page contains  Log in to your account

Verify is settings page is displayed
    wait until element is visible  ${SETTINGS_PROFILE}

Verify if Leads settings are displayed
    wait until element is visible  ${SETTINGS_LEADS_TAB}

Verify if Dashboard is loaded
    wait until element is visible  ${DASHBOARD}