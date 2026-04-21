*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/DashboardDSS.robot

*** Test Cases ***
Verify Dashboard Navigation
    [Documentation]    Verify navigation to Dashboard
    [Tags]    Dashboard    Regression
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Expand Dashboard Menu