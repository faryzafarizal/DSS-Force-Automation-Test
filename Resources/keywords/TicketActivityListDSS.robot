*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ./TicketCreationDSS.robot

*** Keywords ***
Expand Ticket Menu
    [Documentation]    Ensure the Ticket menu is expanded in the sidebar
    Wait Until Element Is Visible    ${Menu_Button}    25s
    ${ticket_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Ticket}
    Run Keyword If    not ${ticket_visible}    Click Element    ${Menu_Button}
    Wait Until Element Is Visible    ${Ticket}    25s
    # If Ticket List sub-item is not visible, expand the Ticket menu
    ${ticket_list_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Ticket_List}
    Run Keyword If    not ${ticket_list_visible}    Click Element    ${Ticket}
    Wait Until Element Is Visible    ${Ticket_List}    10s

Navigate To Ticket Activity List In Sidebar
    [Documentation]    Navigate to Ticket List under Ticket
    Expand Ticket Menu
    Wait Until Element Is Visible    ${Ticket_Activity_List}    10s
    Click Element    ${Ticket_Activity_List}
    Wait Until Page Contains    Ticket Activity List     15s

Search In Ticket List

    Wait Until Element Is Visible    ${Ticket_List_Search_Button}    10s
    Click Element    ${Ticket_List_Search_Button}
    Wait For Spinner To Disappear
