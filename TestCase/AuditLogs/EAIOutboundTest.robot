*** Settings ***
Resource          ../../Configs/Settings.robot
Resource          ../../Resources/keywords/LaunchApp.robot
Resource          ../../Resources/keywords/LoginApp.robot
Resource          ../../Resources/keywords/AuditLogsDSS.robot

Test Setup        Launch Application
Test Teardown     Close Browser

*** Test Cases ***
Verify Navigation To EAI Outbound
    [Documentation]    Verify that user can navigate to the EAI Outbound page
    [Tags]             AuditLogs    Navigation
    Login App
    Navigate To EAI Outbound
