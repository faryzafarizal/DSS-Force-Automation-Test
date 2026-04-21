*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ./TicketCreationDSS.robot
Resource    ./DashboardDSS.robot

*** Keywords ***
Navigate To Area Management
    [Documentation]    Navigate to Area Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_AREA_MGMT}    10s
    Safe Click    ${SIDEBAR_AREA_MGMT}
    Wait Until Page Contains    Area Management    10s

Navigate To Auto Create Activity
    [Documentation]    Navigate to Auto Create Activity under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_AUTO_CREATE_ACTIVITY}    10s
    Safe Click    ${SIDEBAR_AUTO_CREATE_ACTIVITY}
    Wait Until Page Contains    Auto Create Activity    10s

Navigate To Tenant Management
    [Documentation]    Navigate to Tenant Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_TENANT_MGMT}    10s
    Safe Click    ${SIDEBAR_TENANT_MGMT}
    Wait Until Page Contains    Tenant Management    10s

Navigate To Tenant Contract Management
    [Documentation]    Navigate to Tenant Contract Mgmt under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_TENANT_CONTRACT_MGMT}    10s
    Safe Click    ${SIDEBAR_TENANT_CONTRACT_MGMT}
    Wait Until Page Contains    Tenant Contract Mgmt    10s

Navigate To Activity Type Management
    [Documentation]    Navigate to Activity Type Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_ACTIVITY_TYPE_MGMT}    10s
    Safe Click    ${SIDEBAR_ACTIVITY_TYPE_MGMT}
    Wait Until Page Contains    Activity Type Management    10s

Navigate To Matrix Status Management
    [Documentation]    Navigate to Matrix Status Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_MATRIX_STATUS_MGMT}    10s
    Safe Click    ${SIDEBAR_MATRIX_STATUS_MGMT}
    Wait Until Page Contains    Matrix Status Management    10s

Navigate To Auto Assign Configuration
    [Documentation]    Navigate to Auto Assign Configuration under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_AUTO_ASSIGN_CONFIG}    10s
    Safe Click    ${SIDEBAR_AUTO_ASSIGN_CONFIG}
    Wait Until Page Contains    Auto Assign Configuration    10s

Navigate To Customer Management
    [Documentation]    Navigate to Customer Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_CUSTOMER_MGMT}    10s
    Safe Click    ${SIDEBAR_CUSTOMER_MGMT}
    Wait Until Page Contains    Customer Management    10s

Navigate To Lov Management
    [Documentation]    Navigate to Lov Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_LOV_MGMT}    10s
    Safe Click    ${SIDEBAR_LOV_MGMT}
    Wait Until Page Contains    Lov Management    10s

Navigate To End Point
    [Documentation]    Navigate to End Point under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_END_POINT}    10s
    Safe Click    ${SIDEBAR_END_POINT}
    Wait Until Page Contains    End Point    10s

Navigate To Menu Management
    [Documentation]    Navigate to Menu Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_MENU_MGMT}    10s
    Safe Click    ${SIDEBAR_MENU_MGMT}
    Wait Until Page Contains    Menu Management    10s

Navigate To Custom Display Config
    [Documentation]    Navigate to Custom Display Config under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_CUSTOM_DISPLAY_CONFIG}    10s
    Safe Click    ${SIDEBAR_CUSTOM_DISPLAY_CONFIG}
    Wait Until Page Contains    Custom Display Config    10s

Navigate To SkillSet Management
    [Documentation]    Navigate to SkillSet Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_SKILLSET_MGMT}    10s
    Safe Click    ${SIDEBAR_SKILLSET_MGMT}
    Wait Until Page Contains    SkillSet Management    10s

Navigate To System Configuration
    [Documentation]    Navigate to System Configuration under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_SYSTEM_CONFIG}    10s
    Safe Click    ${SIDEBAR_SYSTEM_CONFIG}
    Wait Until Page Contains    System Configuration    10s

Navigate To Term n Cons Management
    [Documentation]    Navigate to Term n Cons. Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_TERM_CONS_MGMT}    10s
    Safe Click    ${SIDEBAR_TERM_CONS_MGMT}
    Wait Until Page Contains    Term n Cons. Management    10s

Navigate To Partner Management
    [Documentation]    Navigate to Partner Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_PARTNER_MGMT}    10s
    Safe Click    ${SIDEBAR_PARTNER_MGMT}
    Wait Until Page Contains    Partner Management    10s

Navigate To Form Template Management
    [Documentation]    Navigate to Form Template Mgmt under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_FORM_TEMPLATE_MGMT}    10s
    Safe Click    ${SIDEBAR_FORM_TEMPLATE_MGMT}
    Wait Until Page Contains    Form Template Mgmt    10s

Navigate To Service Level Agreement
    [Documentation]    Navigate to Service Level Agreement under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_SERVICE_LEVEL_AGREEMENT}    10s
    Safe Click    ${SIDEBAR_SERVICE_LEVEL_AGREEMENT}
    Wait Until Page Contains    Service Level Agreement    10s

Navigate To Additional Info Custom Form
    [Documentation]    Navigate to Additional Info Custom Form under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_ADDITIONAL_INFO_FORM}    10s
    Safe Click    ${SIDEBAR_ADDITIONAL_INFO_FORM}
    Wait Until Page Contains    Additional Info Custom Form    10s

Navigate To User Group Management
    [Documentation]    Navigate to User Group Management under Configs
    Expand Configs Menu
    Wait Until Element Is Visible    ${SIDEBAR_USER_GROUP_MGMT}    10s
    Safe Click    ${SIDEBAR_USER_GROUP_MGMT}
    Wait Until Page Contains    User Group Management    10s

Expand Configs Menu
    [Documentation]    Ensure the Configs menu is expanded in the sidebar
    Wait Until Element Is Visible    ${Menu_Button}    25s
    
    # If Configs menu item is not visible, it might be because the sidebar is collapsed
    ${configs_visible}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${Configs}    5s
    Run Keyword If    not ${configs_visible}    Click Element    ${Menu_Button}
    
    Wait Until Element Is Visible    ${Configs}    25s
    
    # Check if sub-items are already visible (meaning Configs is already expanded)
    # If not visible, click the Configs parent to expand it
    ${area_mgmt_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${SIDEBAR_AREA_MGMT}
    Run Keyword If    not ${area_mgmt_visible}    Click Element    ${Configs}
    
    # Final check for sub-items
    Wait Until Element Is Visible    ${SIDEBAR_AREA_MGMT}    10s
