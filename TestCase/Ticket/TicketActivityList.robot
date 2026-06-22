*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/TicketActivityListDSS.robot

*** Test Cases ***
Execute Ticket Activity List Search
    [Documentation]  Test searching for a ticket in the Ticket Activity List
    [Tags]  TicketActivityList  Search
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Navigate To Ticket Activity List In Sidebar
    # Using the TicketID from testdatadss.robot
    Search In Ticket List
    # Verify results (e.g. check if the table contains any ticket entries)
    Wait Until Page Contains    Ticket    10s
