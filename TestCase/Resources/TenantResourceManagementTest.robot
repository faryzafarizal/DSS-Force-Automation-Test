*** Settings ***
Resource          ../../Configs/Settings.robot
Resource          ../../Resources/keywords/LaunchApp.robot
Resource          ../../Resources/keywords/LoginApp.robot
Resource          ../../Resources/keywords/ResourcesDSS.robot

#Test Setup        Launch App
#Test Teardown     Close Browser

*** Test Cases ***
Verify Navigation To Tenant Resource Management
    [Documentation]    Verify that user can navigate to the Tenant Resource Management page
    [Tags]             Resources    Navigation
    Launch Application
    Login App
    Navigate To Tenant Resource Management
