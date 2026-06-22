*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ./TicketCreationDSS.robot
Resource    ./DashboardDSS.robot

*** Keywords ***
Navigate To Ticket Report
    [Documentation]    Navigate to Ticket Report under Reports
    Expand Reports Menu
    Wait Until Element Is Present    ${SIDEBAR_TICKET_REPORT}    10s
    Safe Click    ${SIDEBAR_TICKET_REPORT}
    Wait Until Page Contains    Ticket Report    10s

Navigate To Team Report
    [Documentation]    Navigate to Team Report under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_TEAM_REPORT}    10s
    Safe Click    ${SIDEBAR_TEAM_REPORT}
    Wait Until Page Contains    Team Report    10s

Navigate To Ticket Summary
    [Documentation]    Navigate to Ticket Summary under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_SUMMARY}    10s
    Safe Click    ${SIDEBAR_TICKET_SUMMARY}
    Wait Until Page Contains    Ticket Summary    10s

Navigate To Contractor Performance
    [Documentation]    Navigate to Contractor Performance under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_CONTRACTOR_PERFORMANCE}    10s
    Safe Click    ${SIDEBAR_CONTRACTOR_PERFORMANCE}
    Wait Until Page Contains    Contractor Performance    10s

Navigate To Ticket Created Vs Closed
    [Documentation]    Navigate to Ticket Created Vs Closed under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_CREATED_VS_CLOSED}    10s
    Safe Click    ${SIDEBAR_TICKET_CREATED_VS_CLOSED}
    Wait Until Page Contains    Ticket Created Vs Closed    10s

Navigate To Forecast
    [Documentation]    Navigate to Forecast under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_FORECAST}    10s
    Safe Click    ${SIDEBAR_FORECAST}
    Wait Until Page Contains    Forecast    10s

Navigate To Activity Summary
    [Documentation]    Navigate to Activity Summary under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_ACTIVITY_SUMMARY}    10s
    Safe Click    ${SIDEBAR_ACTIVITY_SUMMARY}
    Wait Until Page Contains    Activity Summary    10s

Navigate To Form Data Report
    [Documentation]    Navigate to Form Data Report under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_FORM_DATA_REPORT}    10s
    Safe Click    ${SIDEBAR_FORM_DATA_REPORT}
    Wait Until Page Contains    Form Data Report    10s

Navigate To Crew Performance Activity
    [Documentation]    Navigate to Crew Performance Activity under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_CREW_PERFORMANCE}    10s
    Safe Click    ${SIDEBAR_CREW_PERFORMANCE}
    Wait Until Page Contains    Crew Performance Activity    10s

Navigate To Resource Partner
    [Documentation]    Navigate to Resource Partner under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_RESOURCE_PARTNER}    10s
    Safe Click    ${SIDEBAR_RESOURCE_PARTNER}
    Wait Until Page Contains    Resource Partner    10s

Navigate To Executive Summary Report
    [Documentation]    Navigate to Executive Summary Report under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_EXECUTIVE_SUMMARY_REPORT}    10s
    Safe Click    ${SIDEBAR_EXECUTIVE_SUMMARY_REPORT}
    Wait Until Page Contains    Executive Summary    10s

Navigate To Ticket Performance Report
    [Documentation]    Navigate to Ticket Performance Report under Reports
    Expand Reports Menu
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_PERFORMANCE_REPORT}    10s
    Safe Click    ${SIDEBAR_TICKET_PERFORMANCE_REPORT}
    Wait Until Page Contains    Ticket Performance    10s

Expand Reports Menu
    [Documentation]    Ensure the Reports menu is expanded in the sidebar
    Wait Until Element Is Visible    ${Menu_Button}    25s
    
    # If Reports menu item is not visible, it might be because the sidebar is collapsed
    ${reports_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Reports}    5s
    Run Keyword If    not ${reports_visible}    Click Element    ${Menu_Button}
    
    Wait Until Element Is Visible    ${Reports}    10s
    
    # Check if sub-items are already visible (meaning Reports is already expanded)
    # If not visible, click the Reports parent to expand it
    ${ticket_report_visible}=    Run Keyword And Return Status    Wait Until Element Is Present    ${SIDEBAR_TICKET_REPORT}    3s
    Run Keyword If    not ${ticket_report_visible}    Click Element    ${Reports}
    
    # Final check for sub-items
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_REPORT}    10s
