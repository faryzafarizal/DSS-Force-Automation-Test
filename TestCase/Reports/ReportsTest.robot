*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/ReportsDSS.robot

*** Test Cases ***
Verify Reports Navigation
    [Documentation]    Test case to verify navigation to all Reports sub-menus
    [Tags]    Reports    Regression
    Launch Application
    Login App
    Main Page
    
    Navigate To Ticket Report
    Sleep  1s
    Navigate To Team Report
    Sleep  1s
    Navigate To Ticket Summary
    Sleep  1s
    Navigate To Contractor Performance
    Sleep  1s
    Navigate To Ticket Created Vs Closed
    Sleep  1s
    Navigate To Forecast
    Sleep  1s
    Navigate To Activity Summary
    Sleep  1s
    Navigate To Form Data Report
    Sleep  1s
    Navigate To Crew Performance Activity
    Sleep  1s
    Navigate To Resource Partner
    Sleep  1s
    Navigate To Executive Summary Report
    Sleep  1s
    Navigate To Ticket Performance Report
    Sleep  1s
