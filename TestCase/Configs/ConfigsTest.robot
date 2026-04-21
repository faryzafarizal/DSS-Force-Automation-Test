*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot
Resource    ../../Resources/keywords/ConfigsDSS.robot

*** Test Cases ***
Verify Area Management Navigation
    [Documentation]    Verify navigation to Area Management
    [Tags]    Configs    Regression
    Launch Application
    Login App
    Main Page
    Navigate To Area Management
    Sleep  1s
    Navigate To Auto Create Activity
    Sleep  1s
    Navigate To Tenant Management
    Sleep  1s
    Navigate To Tenant Contract Management
    Sleep  1s
    Navigate To Activity Type Management
    Sleep  1s
    Navigate To Matrix Status Management
    Sleep  1s
    Navigate To Auto Assign Configuration
    Sleep  1s
    Navigate To Customer Management
    Sleep  1s
    Navigate To Lov Management
    Sleep  1s
    Navigate To End Point
    Sleep  1s
    Navigate To Menu Management
    Sleep  1s
    Navigate To Custom Display Config
    Sleep  1s
    Navigate To SkillSet Management
    Sleep  1s
    Navigate To System Configuration
    Sleep  1s
    Navigate To Term n Cons Management
    Sleep  1s
    Navigate To Partner Management
    Sleep  1s
    Navigate To Form Template Management
    Sleep  1s
    Navigate To Service Level Agreement
    Sleep  1s
    Navigate To Additional Info Custom Form
    Sleep  1s
    Navigate To User Group Management
    Sleep  1s