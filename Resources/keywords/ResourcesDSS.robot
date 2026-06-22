*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot

*** Keywords ***
Navigate To Resource Management
    [Documentation]    Navigate to Resource Management under Resources
    Expand Resources Menu    ${SIDEBAR_RESOURCE_MGMT}
    Wait Until Element Is Visible    ${SIDEBAR_RESOURCE_MGMT}    25s
    Click Element    ${SIDEBAR_RESOURCE_MGMT}
    Wait Until Page Contains    Resource Management    25s

Navigate To Tenant Resource Management
    [Documentation]    Navigate to Tenant Resource Management under Resources
    Expand Resources Menu    ${SIDEBAR_TENANT_RESOURCE_MGMT}
    Wait Until Element Is Visible    ${SIDEBAR_TENANT_RESOURCE_MGMT}    25s
    Click Element    ${SIDEBAR_TENANT_RESOURCE_MGMT}
    Wait Until Page Contains    Tenant Resource Management    25s
    
Navigate To Resource Partner List
    [Documentation]    Navigate to Resource Partner List under Resources
    Expand Resources Menu    ${SIDEBAR_RESOURCE_PARTNER_LIST}
    Wait Until Element Is Visible    ${SIDEBAR_RESOURCE_PARTNER_LIST}    10s
    Click Element    ${SIDEBAR_RESOURCE_PARTNER_LIST}
    Wait Until Page Contains    Resource Partner List    10s

Expand Resources Menu
    [Documentation]    Ensure the Resources menu is expanded in the sidebar
    [Arguments]    ${target_submenu}
    Wait Until Element Is Visible    ${Menu_Button}    25s
    
    # If Resources menu item is not visible, the sidebar might be collapsed
    ${resources_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Resources}    5s
    Run Keyword If    not ${resources_visible}    Click Element    ${Menu_Button}
    
    Wait Until Element Is Visible    ${Resources}    25s
    
    # Check if target sub-item is already visible (meaning it's expanded)
    ${target_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${target_submenu}
    Run Keyword If    not ${target_visible}    Click Element    ${Resources}
    
    # Final check for target sub-item
    Wait Until Element Is Visible    ${target_submenu}    10s
