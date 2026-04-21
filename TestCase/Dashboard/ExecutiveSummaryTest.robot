*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/DashboardDSS.robot

*** Test Cases ***
Verify Executive Summary Navigation
    [Documentation]    Verify navigation to Executive Summary
    [Tags]    Dashboard    Regression
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Navigate To Executive Summary

Verify Executive Summary Region Filter And Search
    [Documentation]    Verify that selecting a Region and clicking Search works on the Executive Summary page
    [Tags]    Dashboard    Regression    Filter
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Navigate To Executive Summary
    Select Region By Locator    ${REGION_CENTRAL1}
    Safe Click    ${ES_SEARCH_BUTTON}
    Wait For Spinner To Disappear

Verify Executive Summary Reset Filter
    [Documentation]    Verify that the Reset button clears all filters on the Executive Summary page
    [Tags]    Dashboard    Regression    Filter
    Launch Application
    Login App    ${username}    ${password}
    Main Page
    Reset Executive Summary