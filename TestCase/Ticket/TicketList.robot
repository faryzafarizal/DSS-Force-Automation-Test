*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/TicketListDSS.robot

*** Test Cases ***
Execute Ticket List Search
    [Documentation]  Test searching for a ticket in the Ticket Activity List
    [Tags]  TicketList  Search
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Navigate To Ticket List In Sidebar
    # Using the TicketID from testdatadss.robot
    Search In Ticket List
    # Verify results (e.g. check if the table contains any ticket entries)
    Wait Until Page Contains    Ticket    10s

Execute Add Notes in Ticket List
    [Documentation]  Test adding notes to a ticket in the Ticket List
    [Tags]  TicketList  AddNotes
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Navigate To Ticket List In Sidebar
    # Using the TicketID from testdatadss.robot
    Search In Ticket List
    # Verify results (e.g. check if the table contains any ticket entries)
    Wait Until Page Contains    Ticket    10s
    Click on action button 
    Wait Until Page Contains    Add Notes    10s