#Launch APP page

*** Settings ***
# Resource    ../Configs/Settings.robot
Resource    ../../Configs/Settings.robot

#Resource  ../Page/Login.robot

*** Variables ***
${BROWSER}     chrome
${URL}         https://myforce.tmrnd.com.my
# ${REMOTE_URL}     http://127.0.0.1:4723/wd/hub
#${PLATFORM_NAME}      Android
#${DEVICE_NAME}        Samsung S24 Ultra
# ${Activity_NAME}    my.com.tm.tmforce.flutter.MainActivity
# ${PACKAGE_NAME}     my.com.tm.tmforce.flutter.enterprise.sim

 
*** Keywords ***

Launch Application
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Screenshot Directory    ${EXECDIR}/Screenshots

# Launch Application
#   Open Application   ${REMOTE_URL}
#   ...    platformName=${PLATFORM_NAME}
#   ...    deviceName=${DEVICE_NAME}
#   ...    automationName=UiAutomator2
#   ...    newCommandTimeout=2500
#   ...    appActivity=${Activity_NAME}
#   ...    appPackage=${PACKAGE_NAME}
#   ...    fastReset=${True}
