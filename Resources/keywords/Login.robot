*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        https://myforce.tmrnd.com.my
${BROWSER}    Chrome
${USERNAME}   DSS08
${PASSWORD}   force123

*** Test Cases ***
Login With Pre-Click
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    # Step 1: Click the SIT bypass button
    # Click the Webix button 4 times
    Wait Until Element Is Visible    xpath=//button[contains(@class,'webix_button')]    10s
    Wait Until Element Is Enabled    xpath=//button[contains(@class,'webix_button')]    10s

    FOR    ${i}    IN RANGE    4
        Execute JavaScript    document.querySelectorAll('button.webix_button')[0].click();
        Sleep    0.5
    END

    Sleep    2 

    # Step 2: Enter login credentials (placeholders match locators.robot / MyForce Webix UI)
    Wait Until Element Is Visible    xpath=//input[@placeholder='Username']    10s
    Input Text    xpath=//input[@placeholder='Username']    ${USERNAME}
    Wait Until Element Is Visible    xpath=//input[@placeholder="Password"]    10s
    Input Password    xpath=//input[@placeholder="Password"]    ${PASSWORD}
    # Use normalize-space(.) not text() — Webix label may live in a child node
    Wait Until Element Is Visible    xpath=//button[contains(@class, 'webix_button') and (normalize-space(.)='Login with password')]    15s
    Click Element    xpath=//button[contains(@class, 'webix_button') and (normalize-space(.)='Login with Password' )]

    Wait Until Page Contains    Dashboard    10s

    Close Browser