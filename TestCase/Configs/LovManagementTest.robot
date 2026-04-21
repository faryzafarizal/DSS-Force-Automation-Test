*** Settings ***
Resource    ../../../Configs/Settings.robot
Resource    ../../../Resources/keywords/LaunchApp.robot
Resource    ../../../Resources/keywords/LoginApp.robot
Resource    ../../../Resources/locators/locatorsdss.robot
Resource    ../../../TestData/testdatadss.robot
Resource    ../../../Resources/keywords/ConfigsDSS.robot

*** Test Cases ***
Verify Lov Management Navigation
    [Documentation]    Verify navigation to Lov Management
    [Tags]    Configs    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Lov Management
