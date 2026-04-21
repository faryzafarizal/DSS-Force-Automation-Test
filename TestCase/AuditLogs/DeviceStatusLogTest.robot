*** Settings ***
Resource          ../../Configs/Settings.robot
Resource          ../../Resources/keywords/LaunchApp.robot
Resource          ../../Resources/keywords/LoginApp.robot
Resource          ../../Resources/keywords/AuditLogsDSS.robot

Test Setup        Launch Application
Test Teardown     Close Browser

*** Test Cases ***
Verify Navigation To Device Status Log
    [Documentation]    Verify that user can navigate to the Device Status Log page
    [Tags]             AuditLogs    Navigation
    Login App
    Navigate To Device Status Log
