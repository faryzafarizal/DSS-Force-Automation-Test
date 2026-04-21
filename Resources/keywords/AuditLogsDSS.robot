*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot

*** Keywords ***
Expand Audit Logs Menu
    [Documentation]    Ensure the Audit/Logs menu is expanded in the sidebar
    Wait Until Element Is Visible    ${Menu_Button}    25s
    
    # If Audit/Logs menu item is not visible, the sidebar might be collapsed
    ${auditlogs_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Audit_Logs}    5s
    Run Keyword If    not ${auditlogs_visible}    Click Element    ${Menu_Button}
    
    Wait Until Element Is Visible    ${Audit_Logs}    25s
    
    # Check if sub-items are already visible (meaning it's expanded)
    ${ticket_status_log_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${SIDEBAR_TICKET_STATUS_LOG}
    Run Keyword If    not ${ticket_status_log_visible}    Click Element    ${Audit_Logs}
    
    # Final check for sub-items
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_STATUS_LOG}    10s

Navigate To Ticket Status Log
    [Documentation]    Navigate to Ticket Status Log under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_TICKET_STATUS_LOG}    10s
    Click Element    ${SIDEBAR_TICKET_STATUS_LOG}
    Wait Until Page Contains    Ticket Status Log    10s

Navigate To Audit Trail
    [Documentation]    Navigate to Audit Trail under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_AUDIT_TRAIL}    10s
    Click Element    ${SIDEBAR_AUDIT_TRAIL}
    Wait Until Page Contains    Audit Trail    10s

Navigate To EAI Log
    [Documentation]    Navigate to EAI Log under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_EAI_LOG}    10s
    Click Element    ${SIDEBAR_EAI_LOG}
    Wait Until Page Contains    EAI Log    10s

Navigate To Device Status Log
    [Documentation]    Navigate to Device Status Log under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_DEVICE_STATUS_LOG}    10s
    Click Element    ${SIDEBAR_DEVICE_STATUS_LOG}
    Wait Until Page Contains    Device Status Log    10s

Navigate To Resource Session Log
    [Documentation]    Navigate to Resource Session Log under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_RESOURCE_SESSION_LOG}    10s
    Click Element    ${SIDEBAR_RESOURCE_SESSION_LOG}
    Wait Until Page Contains    Resource Session Log    10s

Navigate To Transaction Log
    [Documentation]    Navigate to Transaction Log under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_TRANSACTION_LOG}    10s
    Click Element    ${SIDEBAR_TRANSACTION_LOG}
    Wait Until Page Contains    Transaction Log    10s

Navigate To EAI Outbound
    [Documentation]    Navigate to EAI Outbound under Audit/Logs
    Expand Audit Logs Menu
    Wait Until Element Is Visible    ${SIDEBAR_EAI_OUTBOUND}    10s
    Click Element    ${SIDEBAR_EAI_OUTBOUND}
    Wait Until Page Contains    EAI Outbound    10s
