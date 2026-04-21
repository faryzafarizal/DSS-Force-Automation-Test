*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../../Resources/keywords/LaunchApp.robot
Resource    ../../Resources/locators/locatorsdss.robot
Resource    ../../Resources/keywords/LoginApp.robot
Resource    ../../TestData/testdatadss.robot

Test Setup        Launch App For Login
Test Teardown     Close Browser

*** Keywords ***
Launch App For Login
    LaunchApp.Launch Application
    LoginApp.Your Connection not Private

*** Test Cases ***
Valid Login (Positive Scenario)
    [Documentation]  Ensure valid credentials successfully log user into Main Page.
    [Tags]  Login    Positive
    LoginApp.Login App    ${username}    ${password}
    LoginApp.Main Page

Invalid Username (Negative Scenario)
    [Documentation]  Ensure login fails when using an incorrect username.
    [Tags]  Login    Negative
    LoginApp.Login App    ${invalid_username}    ${password}
    LoginApp.Verify Login Failed

Invalid Password (Negative Scenario)
    [Documentation]  Ensure login fails when using an incorrect password.
    [Tags]  Login    Negative
    LoginApp.Login App    ${username}    ${invalid_password}
    LoginApp.Verify Login Failed

Empty Credentials (Negative Scenario)
    [Documentation]  Ensure login fails when submitting empty fields.
    [Tags]  Login    Negative
    LoginApp.Login App    ${EMPTY}    ${EMPTY}
    LoginApp.Verify Login Failed

