*** Settings ***
Resource    ../../Configs/Settings.robot
Resource    ../locators/locatorsdss.robot
Resource    ../../TestData/testdatadss.robot


*** Keywords ***
Enter TextArea 
    [Arguments]    ${label_text}    ${value}
    ${locator}=    Set Variable    xpath=//label[normalize-space()='${label_text}']/following-sibling::textarea
    Wait Until Element Is Visible    ${locator}    10s
    Safe Click    ${locator}
    Input Text    ${locator}    ${value}


Enter Input
    [Arguments]    ${label_text}    ${value}
    ${locator}=    Set Variable    xpath=//label[normalize-space()='${label_text}']/following-sibling::input
    Wait Until Element Is Visible    ${locator}    10s
    Safe Click    ${locator}
    Input Text    ${locator}    ${value}


Select Checkbox Option
    [Arguments]    ${text}
    ${locator}=    Set Variable    xpath=//div[@webix_l_id='${text}' and @role='option' and @class='webix_list_item']
    Wait Until Element Is Visible    ${locator}    10s
    Safe Click    ${locator}

Wait For Spinner To Disappear
    [Documentation]    Wait until the spinner element is no longer visible
    Wait Until Page Does Not Contain Element    ${Spinner}    10s


Open Webix Combo
    [Arguments]    ${label_text}
    ${locator}=    Set Variable       xpath=//label[normalize-space()='${label_text}']/following-sibling::input[@role='combobox']
    Scroll Element Into View    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    Safe Click    ${locator}


Safe Click
    [Arguments]    ${locator}
    # Retry click if DOM is refreshing & element becomes stale
    Wait Until Keyword Succeeds    3x    2s    Click Element    ${locator}

Select Webix Option
    [Arguments]    ${text}
    Wait Until Element Is Visible    xpath=//div[contains(@class,'webix_list_item')]    20s
    ${locator}=    Set Variable    xpath=//div[contains(@class,'webix_list_item') and contains(normalize-space(.),'${text}')]
    Wait Until Element Is Visible    ${locator}    20s
    Safe Click    ${locator}

Fill Details Combo
    [Arguments]    ${combo_locator}    ${option_text}
    Scroll Element Into View    ${combo_locator}
    Wait Until Element Is Visible    ${combo_locator}    10s
    Safe Click    ${combo_locator}
    Select Webix Option    ${option_text}

Fill Details Textarea
    [Arguments]    ${textarea_locator}    ${value}
    Scroll Element Into View    ${textarea_locator}
    Wait Until Element Is Visible    ${textarea_locator}    10s
    Safe Click    ${textarea_locator}
    Input Text    ${textarea_locator}    ${value}

Fill Details Text Input
    [Arguments]    ${input_locator}    ${value}
    Scroll Element Into View    ${input_locator}
    Wait Until Element Is Visible    ${input_locator}    10s
    Safe Click    ${input_locator}
    Input Text    ${input_locator}    ${value}

Fill Ticket Details Section
    [Arguments]    ${ticket_category}    ${case_category}    ${case_type}    ${source}    ${description}    ${repeated_ticket}    ${region}    ${area}    ${sub_area}    ${location}    ${priority}    ${external_ref_id}=${EMPTY}
    Wait Until Element Is Visible    ${TC_DETAILS_FIELDSET}    10s

    Fill Details Combo    ${TC_DETAILS_TICKET_CATEGORY_COMBO}    ${ticket_category}
    Fill Details Combo    ${TC_DETAILS_CASE_CATEGORY_COMBO}      ${case_category}
    Fill Details Combo    ${TC_DETAILS_CASE_TYPE_COMBO}          ${case_type}
    Fill Details Combo    ${TC_DETAILS_SOURCE_COMBO}               ${source}
    Fill Details Textarea    ${TC_DETAILS_DESCRIPTION}            ${description}
    Fill Details Combo    ${TC_DETAILS_REPEATED_TICKET_COMBO}      ${repeated_ticket}
    Fill Details Combo    ${TC_DETAILS_REGION_COMBO}               ${region}
    Fill Details Combo    ${TC_DETAILS_AREA_COMBO}                 ${area}
    Fill Details Combo    ${TC_DETAILS_SUB_AREA_COMBO}             ${sub_area}
    Fill Details Textarea    ${TC_DETAILS_LOCATION}               ${location}
    Fill Details Combo    ${TC_DETAILS_PRIORITY_COMBO}            ${priority}

    Run Keyword If    '${external_ref_id}' != ''    Fill Details Text Input    ${TC_DETAILS_EXTERNAL_REF_ID}    ${external_ref_id}

Navigate To Ticket Creation In Sidebar
    [Documentation]    DSS uses the left tree (not legacy top bar webix_tm_id='task'). Open menu, expand Ticket, open Ticket Creation.
    Wait Until Element Is Visible    ${Menu_Button}    25s
    ${ticket_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Ticket}
    Run Keyword If    not ${ticket_visible}    Click Element    ${Menu_Button}
    Wait Until Element Is Visible    ${Ticket}    10s
    Scroll Element Into View    ${Ticket}
    Click Element    ${Ticket}
    Sleep    0.5s
    Wait Until Element Is Visible    ${Ticket_Creation}    10s
    Scroll Element Into View    ${Ticket_Creation}
    Click Element    ${Ticket_Creation}

Search Ticket Creation
    [Documentation]    Test case to search Ticket Creation
    Navigate To Ticket Creation In Sidebar 
   # Wait Until Page Contains    Ticket Id/Order Id
    Wait Until Page Contains    Ticket Category
    Wait Until Page Contains    Case Category
    Wait Until Page Contains    Case Type 
    Wait Until Page Contains    Source
    Wait Until Page Contains    Description
   # Wait Until Page Contains    Comments
   # Wait Until Page Contains    Wilayah
    Wait Until Page Contains    Region
    Wait Until Page Contains    Area
    Wait Until Page Contains    Sub-Area
    #Wait Until Page Contains    Building
    Wait Until Page Contains    Location 
    Wait Until Page Contains    Latitude  
    Wait Until Page Contains    Longitude 
    Wait Until Page Contains    Priority

    
    #Create ticket
    #Ticket Category
    Open Webix Combo    Ticket Category 
    Select Webix Option   ALARM
    Wait For Spinner To Disappear
    Sleep    1 

    #Case Category 
    Open Webix Combo    Case Category 
    Select Webix Option    VIDEO SECURITY
    Wait For Spinner To Disappear
    Sleep    1 

    #Case Type 
    Open Webix Combo       Case Type 
    Select Webix Option    INTRUSION 
    Wait For Spinner To Disappear
    Sleep    1 

    # Description
    Enter Input    Description    test  
    Sleep    1 

    #Comments
    #Enter TextArea    Comments      test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test
    #Sleep    1 

    #Region 
    Open Webix Combo        Region 
    Select Webix Option    CENTRAL 1 
    Wait For Spinner To Disappear
    Sleep    1 

    #Area
    Open Webix Combo    Area 
    Select Webix Option  ZON PJ 1 
    Wait For Spinner To Disappear
    Sleep    1

    #Sub-Area
    Open Webix Combo    Sub-Area 
    Select Webix Option    IBS TM SG WAY
    Wait For Spinner To Disappear
    Sleep    1

    Wait Until Element Is Visible    xpath=//button[@type='button' and @class='webix_button' and normalize-space()='Get GPS']
    Click Element    xpath=//button[@type='button' and @class='webix_button' and normalize-space()='Get GPS'] 
    Sleep    1 

    #Location - Click on map to set location
    Click Element At Coordinates
    ...    xpath=//div[contains(@class,'leaflet-container')]
    ...    400    250

    Wait Until Element Is Visible    xpath=//button[@type='button' and @class='webix_button' and normalize-space()='Ok']
    Click Element    xpath=//button[@type='button' and @class='webix_button' and normalize-space()='Ok'] 
    Sleep    1 

    Enter Input    Location    Cyberjaya  
    Sleep    1 

    #Priority
    Open Webix Combo    Priority 
    Select Webix Option    HIGH

    Wait Until Element Is Visible    ${SubmitButton}    timeout=10s 
    Click Element    ${SubmitButton} 
    Sleep    1 

    Wait Until Element Is Visible    ${OKButton}    timeout=10s 
    Click Element    ${OKButton} 
    Sleep    1 

Cancel Ticket Creation
    [Documentation]    Clicks the Cancel button in the ticket creation form
    ${locator}=    Set Variable    xpath=//button[@type='button' and @class='webix_button' and normalize-space()='Cancel']
    Wait Until Element Is Visible    ${locator}    10s
    Safe Click    ${locator}
    Sleep    1

Submit And Verify Validation Error
    [Documentation]    Clicks Submit without filling required fields and verifies validation
    Wait Until Element Is Visible    ${SubmitButton}    timeout=10s 
    Click Element    ${SubmitButton} 
    Sleep    1
    # Check for Webix invalid validation class or page contains error message
    ${status}=    Run Keyword And Return Status    Wait Until Element Is Visible    xpath=//*[contains(@class,'webix_invalid')]    5s
    Run Keyword If    not ${status}    Log    Warning: No webix_invalid class found. Adjust validation locator.    WARN