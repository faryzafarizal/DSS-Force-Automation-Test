*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ./TicketCreationDSS.robot

*** Keywords ***
Navigate To Executive Summary
    [Documentation]    Navigate to Executive Summary under Dashboard
    Expand Dashboard Menu
    Wait Until Element Is Visible    ${SIDEBAR_EXECUTIVE_SUMMARY}    10s
    Safe Click    ${SIDEBAR_EXECUTIVE_SUMMARY}
    Wait Until Page Contains    Executive Summary    10s

Enter TextArea
    [Arguments]    ${textarea_locator}    ${value}
    Wait Until Element Is Visible    ${textarea_locator}    10s
    Safe Click    ${textarea_locator}
    Input Text    ${textarea_locator}    ${value}

Navigate To Team and Ticket Tracker
    [Documentation]    Navigate to Team & Ticket Tracker under Dashboard
    Expand Dashboard Menu
    Wait Until Element Is Visible    ${SIDEBAR_TEAM_TICKET_TRACKER}    10s
    Safe Click    ${SIDEBAR_TEAM_TICKET_TRACKER}
    Wait Until Page Contains    Team & Ticket Tracker    10s

Navigate To Team Performance
    [Documentation]    Navigate to Team Performance under Dashboard
    Expand Dashboard Menu
    Wait Until Element Is Visible    ${SIDEBAR_TEAM_PERFORMANCE}    10s
    Safe Click    ${SIDEBAR_TEAM_PERFORMANCE}
    Wait Until Page Contains    Team Performance    10s

Navigate To Ticket Performance
    [Documentation]    Navigate to Ticket Performance under Dashboard
    Expand Dashboard Menu
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_PERFORMANCE}    10s
    Safe Click    ${SIDEBAR_TICKET_PERFORMANCE}
    Wait Until Page Contains    Ticket Performance    10s

Navigate To Team and Ticket Performance
    [Documentation]    Navigate to Team & Ticket Performance under Dashboard
    Expand Dashboard Menu
    Wait Until Element Is Visible    ${SIDEBAR_TEAM_TICKET_PERFORMANCE}    10s
    Safe Click    ${SIDEBAR_TEAM_TICKET_PERFORMANCE}
    Wait Until Page Contains    Team & Ticket Performance    10s

Expand Dashboard Menu
    [Documentation]    Ensure the Dashboard menu is expanded in the sidebar
    Wait Until Element Is Visible    ${Menu_Button}    25s
    
    # If Dashboard menu item is not visible, it might be because the sidebar is collapsed
    ${dashboard_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Dashboard}    5s
    Run Keyword If    not ${dashboard_visible}    Click Element    ${Menu_Button}
    
    Wait Until Element Is Visible    ${Dashboard}    10s
    
    # Check if sub-items are already visible (meaning Dashboard is already expanded)
    # If not visible, click the Dashboard parent to expand it
    ${summary_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${SIDEBAR_EXECUTIVE_SUMMARY}
    Run Keyword If    not ${summary_visible}    Click Element    ${Dashboard}
    
    # Final check for sub-items
    Wait Until Element Is Visible    ${SIDEBAR_EXECUTIVE_SUMMARY}    10s


Search Executive Summary
    [Arguments]    ${case_category}=${EMPTY}    ${region}=${EMPTY}    ${case_type}=${EMPTY}    ${area}=${EMPTY}
    [Documentation]    Fill the search form in Executive Summary and click Search
    Navigate To Executive Summary
    
    Run Keyword If    '${case_category}' != '${EMPTY}'    Fill Dashboard Combo    ${ES_CASE_CATEGORY_COMBO}    ${case_category}
    Run Keyword If    '${region}' != '${EMPTY}'           Fill Dashboard Combo    ${ES_REGION_COMBO}           ${region}
    Run Keyword If    '${case_type}' != '${EMPTY}'         Fill Dashboard Combo    ${ES_CASE_TYPE_COMBO}         ${case_type}
    Run Keyword If    '${area}' != '${EMPTY}'              Fill Dashboard Combo    ${ES_AREA_COMBO}              ${area}
    
    Safe Click    ${ES_SEARCH_BUTTON}
    Wait For Spinner To Disappear

Reset Executive Summary
    [Documentation]    Click the Reset button in Executive Summary
    Navigate To Executive Summary
    Safe Click    ${ES_RESET_BUTTON}
    Wait For Spinner To Disappear

Fill Dashboard Combo
    [Arguments]    ${combo_locator}    ${option_text}
    Wait Until Element Is Visible    ${combo_locator}    10s
    Safe Click    ${combo_locator}
    Select Webix Option    ${option_text}
Select Region By Locator
    [Arguments]    ${region_locator}
    Wait Until Element Is Visible    ${ES_REGION_COMBO}    10s
    Safe Click    ${ES_REGION_COMBO}
    Wait Until Element Is Visible    ${region_locator}    10s
    Safe Click    ${region_locator}
    # To close dropdown if needed
    Safe Click    ${ES_REGION_COMBO}

