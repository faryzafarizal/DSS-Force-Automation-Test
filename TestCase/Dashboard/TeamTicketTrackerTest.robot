*** Settings ***
Resource    ../../../Configs/Settings.robot
Resource    ../../../Resources/keywords/LaunchApp.robot
Resource    ../../../Resources/keywords/LoginApp.robot
Resource    ../../../Resources/locators/locatorsdss.robot
Resource    ../../../TestData/testdatadss.robot
Resource    ../../../Resources/keywords/DashboardDSS.robot

*** Test Cases ***
Verify Team and Ticket Tracker Navigation
    [Documentation]    Verify navigation to Team & Ticket Tracker
    [Tags]    Dashboard    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Team and Ticket Tracker
    