*** Settings ***
Resource    ../../../../Configs/Settings.robot
Resource    ../../../../Resources/keywords/LaunchApp.robot
Resource    ../../../../Resources/keywords/LoginApp.robot
Resource    ../../../../Resources/locators/locatorsdss.robot
Resource    ../../../../TestData/testdatadss.robot
Resource    ../../../../Resources/keywords/DashboardDSS.robot

*** Test Cases ***
Verify Team Performance Navigation
    [Documentation]    Verify navigation to Team Performance
    [Tags]    Dashboard    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Team Performance