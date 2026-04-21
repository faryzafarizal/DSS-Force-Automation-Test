*** Settings ***
Resource    ../../../Configs/Settings.robot
Resource    ../../../Resources/keywords/LaunchApp.robot
Resource    ../../../Resources/keywords/LoginApp.robot
Resource    ../../../Resources/locators/locatorsdss.robot
Resource    ../../../TestData/testdatadss.robot
Resource    ../../../Resources/keywords/ConfigsDSS.robot

*** Test Cases ***
Verify Partner Management Navigation
    [Documentation]    Verify navigation to Partner Management
    [Tags]    Configs    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Partner Management
