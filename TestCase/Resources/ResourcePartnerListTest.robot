*** Settings ***
Resource          ../../Configs/Settings.robot
Resource          ../../Resources/keywords/LaunchApp.robot
Resource          ../../Resources/keywords/LoginApp.robot
Resource          ../../Resources/keywords/ResourcesDSS.robot

Test Setup        Launch App
Test Teardown     Close Browser

*** Test Cases ***
Verify Navigation To Resource Partner List
    [Documentation]    Verify that user can navigate to the Resource Partner List page
    [Tags]             Resources    Navigation
    Login App
    Navigate To Resource Partner List
