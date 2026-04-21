*** Variables ***
${Ticket}              xpath=//div[span[text()='Ticket']]
${Ticket_Creation}     xpath=//div[span[text()='Ticket Creation']]


*** Keywords ***
Click Element Safely
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    Wait Until Element Is Enabled    ${locator}    10s
    Click Element    ${locator}

View Audit Log
    Click Element Safely    ${Ticket}
    Click Element Safely    ${Ticket_Creation}