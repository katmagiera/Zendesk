*** Settings ***
Documentation
Resource  ../Resources/Common.robot
Resource  ../Resources/PO/LoginPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/AddLead.robot
Resource  ../Resources/PO/LeadDetails.robot
Resource  ../Resources/PO/SettingsLeftMenu.robot
Resource  ../Resources/PO/SettingsLeads.robot


Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  https://core.futuresimple.com/users/login

*** Test Cases ***

Log into the Zendesk Sell web application
    Open login page and verify if it is loaded
    Login to Zendesk Sell

Create a new Lead and check status
    Open login page and verify if it is loaded
    Login to Zendesk Sell
    Choose "Add new lead" from list
    Fill leads name and last name
    Save changes and go to details
    Check if status is New


Change the name of the "New" status
    Open login page and verify if it is loaded
    Login to Zendesk Sell
    Go to settings
    Open Leads settings
    Open "Lead statuses" and change status


Checking if status changed in Lead Details
    Open login page and verify if it is loaded
    Login to Zendesk Sell
    Open lead details
    Check if status changed


Delete created lead and change back status
    #TODO create keyword 'remove created lead'
    Open login page and verify if it is loaded
    Login to Zendesk Sell
    Go to settings
    Open Leads settings
    Change back status name









