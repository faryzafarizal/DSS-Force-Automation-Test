*** Settings ***
Resource          ../../Configs/Settings.robot
Resource          ../../Resources/keywords/LaunchApp.robot
Resource          ../../Resources/keywords/LoginApp.robot
Resource          ../../Resources/keywords/AuditLogsDSS.robot

Test Setup        Launch Application
Test Teardown     Close Browser

*** Test Cases ***
Verify Navigation To Audit Trail
    [Documentation]    Verify that user can navigate to the Audit Trail page
    [Tags]             AuditLogs    Navigation
    Login App
    Navigate To Audit Trail
