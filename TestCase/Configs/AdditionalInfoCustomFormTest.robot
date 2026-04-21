*** Settings ***
Resource    ../../../Configs/Settings.robot
Resource    ../../../Resources/keywords/LaunchApp.robot
Resource    ../../../Resources/keywords/LoginApp.robot
Resource    ../../../Resources/locators/locatorsdss.robot
Resource    ../../../TestData/testdatadss.robot
Resource    ../../../Resources/keywords/ConfigsDSS.robot

*** Test Cases ***
Verify Additional Info Custom Form Navigation
    [Documentation]    Verify navigation to Additional Info Custom Form
    [Tags]    Configs    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Additional Info Custom Form
