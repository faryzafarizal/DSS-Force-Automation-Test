*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${CHROME_PREFS}    {"profile.default_content_setting_values.notifications": 2}

*** Keywords ***
Set Implicit Wait
    [Arguments]    ${time}
    Set Selenium Implicit Wait    ${time}