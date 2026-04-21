*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot


*** Keywords ***

At Least One Login Control Visible
    [Documentation]    True when username field or Enter CTA is already on screen.
    ${user visible}=    Run Keyword And Return Status    Element Should Be Visible    ${username_input}
    ${enter visible}=    Run Keyword And Return Status    Element Should Be Visible    ${EnterLogin_btn}
    Should Be True    ${user visible} or ${enter visible}

Bypass SIT Environment If Needed
    [Documentation]    DSS may show SIT/pre-login Webix buttons before the real login form.
    ${already}=    Run Keyword And Return Status    Element Should Be Visible    ${username_input}
    Return From Keyword If    ${already}
    ${sit}=    Run Keyword And Return Status    Wait Until Page Contains Element    ${SIT_Button}    8s
    Return From Keyword If    not ${sit}
    FOR    ${i}    IN RANGE    4
        Execute Javascript    document.querySelectorAll('button.webix_button')[0].click()
        Sleep    0.5s
    END

Your Connection not Private
    [Documentation]    Open the browser and handle SSL certificate warning
    ${is_ssl_error}=    Run Keyword And Return Status    Page Should Contain    Your connection is not private
    Return From Keyword If    not ${is_ssl_error}
    Click Element    ${AdvancedButton}
    Page Should Contain      simulation.tmforcedev.tm.com.my (unsafe)
    Click Link    ${ProceedLink}
    #Handle Notification Permission Request
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_experimental_option    prefs    ${CHROME_PREFS}

Login App
    [Documentation]    Perform successful login with valid credentials.
    [Arguments]    ${user}    ${pass}

    Bypass SIT Environment If Needed
    Wait Until Keyword Succeeds    30s    1s    At Least One Login Control Visible
    ${has_enter}=    Run Keyword And Return Status    Element Should Be Visible    ${EnterLogin_btn}
    Run Keyword If    ${has_enter}    Click Element    ${EnterLogin_btn}
    Wait Until Element Is Visible    ${username_input}    20s
    Input Text    ${username_input}    ${user}

    Wait Until Element Is Visible    ${password_input}    15s
    Input Password    ${password_input}    ${pass}

    Wait Until Element Is Visible    ${LoginButton}    15s
    Click Element    ${LoginButton}
    # Wait Until Page Contains    Announcement    timeout=10

Verify Login Failed
    [Documentation]    Ensure login fails and user remains on log in.
    Wait Until Element Is Visible    ${LoginButton}    10s
    Element Should Be Visible    ${LoginButton}

Main Page
    [Documentation]    Ensure main page is loaded
    # Sleep    2s
    Wait Until Page Contains    Announcement    timeout=15
    Sleep    3s
    # Wait Until Page Contains    Announcement    20s
    # Run Keyword    Wait For Spinner To Disappear





#     #allow noti
#     Click Element    ${notiallow_button}
#     Sleep    1

negative scenario
#     Click Element    ${username_input}
#     Wait Until Page Contains Element    ${username_input}    timeout=10
#     Input Text    ${username_input}    TM30376
#     Sleep    1
#     Hide Keyboard
#     Click Element    ${login_btn}
#     Sleep    1
#     # Click Element    ${username_input}
#     Click Element    ${username_input}
#     Clear Text    ${username_input}
#     Hide Keyboard
#     # Input Text    ${username_input}    ${EMPTY}
#     # Set Variable    ${username_input}    ${EMPTY} 
#     Click Element    ${password_input}
#     Wait Until Page Contains Element    ${password_input}    timeout=10

#     Input Password    ${password_input}    TM30376
#     Hide Keyboard
#     Click Element    ${login_btn}
#     Sleep    1
#     Click Element    ${password_input}
#     Clear Text    ${password_input}
#     Hide Keyboard
#     # Input Text    ${password_input}    ${EMPTY}
#     # Set Variable    ${password_input}    ${EMPTY} 
#     # Click Element    ${login_btn}


# Login app - positive scenario

#     #allow noti
#     # Click Element    ${notiallow_button} 
#     # Sleep    1

#     #positive scenario
#     Click Element    ${username_input}
#     Wait Until Page Contains Element    ${username_input}    timeout=10
#     Input Text    ${username_input}    M11573
#     Sleep    1
#     Hide Keyboard
#     Click Element    ${password_input}
#     Wait Until Page Contains Element    ${password_input}    timeout=10
#     Input Password    ${password_input}    M11573
#     Hide Keyboard
#     Sleep    2
#     Click Element    ${login_btn}
#     Sleep    5

#     # #allow tmf app to access device location
#     # Click Element    ${whileusingtheapp_button}
#     # Sleep    1

# Late Login Check
#     [Documentation]    Check if late login is required and handle accordingly
#     ${current_time}    Get Current Time    result_format=%H:%M
#     Log    Current Time: ${current_time}
#     Run Keyword If    '${current_time}' > '${LATE_LOGIN_TIME}'    Handle Late Login Popup

# Handle Late Login Popup
#     [Documentation]    Handle the late login popup by selecting a reason from the dropdown
#     Click Element    ${select_input}
#     Wait Until Element Is Visible    ${badweather_dropdownbutton}
#     Click Element    ${badweather_dropdownbutton}
#     # Select From List By Value    xpath=//select[@id='late_reason']    ReasonCode1
#     Click Element    ${submitlatelogin_button}

    








   