*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/ReportsDSS.robot

*** Test Cases ***
Verify Ticket Summary Navigation
    [Documentation]    Verify navigation to Ticket Summary
    [Tags]    Reports    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Ticket Summary
