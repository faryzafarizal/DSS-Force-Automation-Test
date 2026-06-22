*** Variables ***

# Pre-login / SIT bypass
${SIT_Button}            xpath=//button[contains(@class,'webix_button')]

# Login Page
${EnterLogin_btn}           xpath=//button[contains(@class,'webix_button') and contains(normalize-space(.),'Enter')]
${USERNAME_INPUT}            xpath=//input[@placeholder='Username']
${PASSWORD_INPUT}            xpath=//input[@placeholder="Password"]
${Login_Button}              xpath=//button[@type='button' and contains(@class, 'webix_button') and contains(translate(normalize-space(.), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'login') and contains(translate(normalize-space(.), 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), 'password')]
${username_input}            ${USERNAME_INPUT}
${password_input}            ${PASSWORD_INPUT}
${LoginButton}               ${Login_Button}

# Sidebar Navigation
${Menu_Button}             xpath=//button[contains(@class,'webix_icon_button')]
${Ticket}                  xpath=//div[@class='webix_tree_item' and span[text()='Ticket']]
${Dashboard}               xpath=//div[contains(@class, 'webix_tree_item') and .//span[text()='Dashboard']]
${Reports}                 xpath=//div[contains(@class, 'webix_tree_item') and .//span[text()='Reports']]
${Configs}                 xpath=//div[contains(@class, 'webix_tree_item') and .//span[text()='Configs']]
${Resources}               xpath=//div[@class='webix_tree_item' and span[text()='Resources']]
${Audit_Logs}              xpath=//div[@class='webix_tree_item' and span[text()='Audit/Logs']]

# Ticket Page
${Ticket}                  xpath=//div[contains(@class, 'webix_tree_item') and .//span[normalize-space()='Ticket']]
${Ticket_Creation}         xpath=//div[contains(@class, 'webix_tree_item') and .//span[normalize-space()='Ticket Creation']]
${Ticket_List}             xpath=//div[contains(@class, 'webix_tree_item') and .//span[normalize-space()='Ticket List']]
${Ticket_Activity_List}    xpath=//div[@class='webix_tree_item' and span[text()='Ticket Activity List']]
${Ticket_Activity_List_Tooltip}    xpath=//div[contains(@class, 'webix_tooltip') and text()='Ticket Activity List']
${Ticket_List_Search_Button}       xpath=//button[contains(@class, 'webix_button') and text()='Search']
${Ticket_Search}           xpath=//div[@class='webix_tree_item' and span[text()='Ticket Search']]
${Ticket_History}          xpath=//div[@class='webix_tree_item' and span[text()='Ticket Activity List']]
${Ticket_Activity_History}    xpath=//div[@class='webix_tree_item' and span[text()='Ticket Activity History']]
${Ticket_List_Action_Button}       xpath=//div[contains(@class, 'webix_cell') and @aria-colindex='16']//span[contains(@class, 'mdi-dots-vertical')]
# Ticket Creation Page
${Ticket_Creation}         xpath=//div[contains(@class, 'webix_tree_item') and .//span[normalize-space()='Ticket Creation']]

# Main app navigation & ticket creation flow (TicketCreationDSS / LoginApp)
${Spinner}                 xpath=//div[contains(@class, 'webix_progress_state') and contains(@class, 'wxi-sync') and contains(@class, 'webix_spin')]
${MainMenuBar}             xpath=//div[@webix_tm_id='main']
${TasksMenuBar}            xpath=//div[@webix_tm_id='task']
${TicketCreationBar}       xpath=//div[@webix_tm_id='ticketcreation']
${SubmitButton}            xpath=//button[contains(@class, 'webix_button') and normalize-space()='Submit']
${OKButton}                xpath=//div[@role='button' and @aria-label='OK']

# Chrome SSL interstitial (LoginApp.Your Connection not Private)
${AdvancedButton}          xpath=//button[@id="details-button"]
${ProceedLink}             xpath=//a[@id="proceed-link"]
${CHROME_PREFS}            {"profile.default_content_setting_values.notifications": 1}

# --- Ticket Creation: "Details" fieldset (DSS Webix; view_id from DOM) ---
# Optional anchor if you need to scope to this section only:
${TC_DETAILS_FIELDSET}                     xpath=//fieldset[.//legend[normalize-space()='Details']]
${TC_DETAILS_TICKET_ID}                    xpath=//div[@view_id='ticketId']//input[@type='text']
${TC_DETAILS_TICKET_CATEGORY_COMBO}    xpath=//div[@view_id='ticketCategory:combo']//input
${TC_DETAILS_CASE_CATEGORY_COMBO}      xpath=//div[@view_id='caseCategory:combo']//input
${TC_DETAILS_CASE_TYPE_COMBO}          xpath=//div[@view_id='caseType:combo']//input
${TC_DETAILS_SOURCE_COMBO}             xpath=//div[@view_id='complaintSource:combo']//input
${TC_DETAILS_REGION_COMBO}             xpath=//div[@view_id='region:combo']//input
${TC_DETAILS_AREA_COMBO}               xpath=//div[@view_id='area:combo']//input
${TC_DETAILS_SUB_AREA_COMBO}           xpath=//div[@view_id='subArea:combo']//input
${TC_DETAILS_PRIORITY_COMBO}           xpath=//div[@view_id='priority:combo']//input
# Repeated Ticket uses view_id="$combo3" (awkward in RF); label + combo box is stable:

# Operational Dashboard Sidebar
${SIDEBAR_EXECUTIVE_SUMMARY}            xpath=//div[@webix_tm_id='od.executivesummary']
${SIDEBAR_TEAM_TICKET_TRACKER}         xpath=//div[@webix_tm_id='od.tickettracker']
${SIDEBAR_TEAM_PERFORMANCE}            xpath=//div[@webix_tm_id='od.teamperform']
${SIDEBAR_TICKET_PERFORMANCE}          xpath=//div[@webix_tm_id='od.ticketperform']
${SIDEBAR_TEAM_TICKET_PERFORMANCE}     xpath=//div[@webix_tm_id='od.teamticketperformance']

# Operational Dashboard Executive Summary Form
${ES_CASE_CATEGORY_COMBO}      xpath=//div[@view_id='caseCategory:combo']//input
${ES_REGION_COMBO}             xpath=//div[@view_id='region:combo']//input
${ES_CASE_TYPE_COMBO}          xpath=//div[@view_id='caseType:combo']//input
${ES_AREA_COMBO}               xpath=//div[@view_id='area:combo']//input
${ES_RESET_BUTTON}             xpath=//button[text()='Reset']
${ES_SEARCH_BUTTON}            xpath=//button[text()='Search']

# Region Filter Items (Webix List)
${REGION_CENTRAL1}           xpath=//div[@webix_l_id='11542']
${REGION_CENTRAL2}           xpath=//div[@webix_l_id='11620']
${REGION_JOHOR}              xpath=//div[@webix_l_id='11623']
${REGION_KEDAH_PERLIS}       xpath=//div[@webix_l_id='11626']
${REGION_KELANTAN}           xpath=//div[@webix_l_id='11629']
${REGION_MELAKA}             xpath=//div[@webix_l_id='11622']
${REGION_NEGERI_SEMBILAN}    xpath=//div[@webix_l_id='11621']
${REGION_PAHANG}             xpath=//div[@webix_l_id='11628']
${REGION_PERAK}              xpath=//div[@webix_l_id='11625']
${REGION_PULAU_PINANG}       xpath=//div[@webix_l_id='11624']
${REGION_SABAH}              xpath=//div[@webix_l_id='11630']
${REGION_SARAWAK}            xpath=//div[@webix_l_id='11631']
${REGION_TERENGGANU}         xpath=//div[@webix_l_id='11627']

# Operational Dashboard Reports
${SIDEBAR_TICKET_REPORT}                xpath=//div[@webix_tm_id='od.ticketreport']
${SIDEBAR_TEAM_REPORT}                  xpath=//div[@webix_tm_id='od.teamreport']
${SIDEBAR_TICKET_SUMMARY}               xpath=//div[@webix_tm_id='od.ticketsummary']
${SIDEBAR_CONTRACTOR_PERFORMANCE}       xpath=//div[@webix_tm_id='od.contractormanagement']
${SIDEBAR_TICKET_CREATED_VS_CLOSED}     xpath=//div[@webix_tm_id='od.ticketcreatedclosed']
${SIDEBAR_FORECAST}                     xpath=//div[@webix_tm_id='od.forecast']
${SIDEBAR_ACTIVITY_SUMMARY}             xpath=//div[@webix_tm_id='od.activitysummary']
${SIDEBAR_FORM_DATA_REPORT}             xpath=//div[@webix_tm_id='od.formdatareport']
${SIDEBAR_CREW_PERFORMANCE}             xpath=//div[@webix_tm_id='od.pbicrewprofile']
${SIDEBAR_RESOURCE_PARTNER}             xpath=//div[@webix_tm_id='od.resourcepartner']
${SIDEBAR_EXECUTIVE_SUMMARY_REPORT}      xpath=//div[@webix_tm_id='od.executivesummaryreport']
${SIDEBAR_TICKET_PERFORMANCE_REPORT}    xpath=//div[@webix_tm_id='od.ticketperformreport']
# Operational Dashboard Configs Sidebar
${SIDEBAR_AREA_MGMT}                  xpath=//div[@webix_tm_id='admin.areamanagement']
${SIDEBAR_AUTO_CREATE_ACTIVITY}       xpath=//div[@webix_tm_id='od.autocreateactivity']
${SIDEBAR_TENANT_MGMT}                xpath=//div[@webix_tm_id='admin.tenantmgmt']
${SIDEBAR_TENANT_CONTRACT_MGMT}       xpath=//div[@webix_tm_id='admin.contractmanagement']
${SIDEBAR_ACTIVITY_TYPE_MGMT}         xpath=//div[@webix_tm_id='admin.activitytypemanagement']
${SIDEBAR_MATRIX_STATUS_MGMT}         xpath=//div[@webix_tm_id='admin.matrixstatus']
${SIDEBAR_AUTO_ASSIGN_CONFIG}         xpath=//div[@webix_tm_id='admin.autoassignconfig']
${SIDEBAR_CUSTOMER_MGMT}              xpath=//div[@webix_tm_id='admin.customermanagement']
${SIDEBAR_LOV_MGMT}                   xpath=//div[@webix_tm_id='admin.lovmgmt']
${SIDEBAR_END_POINT}                  xpath=//div[@webix_tm_id='od.endpoint']
${SIDEBAR_MENU_MGMT}                  xpath=//div[@webix_tm_id='admin.menumgmt']
${SIDEBAR_CUSTOM_DISPLAY_CONFIG}      xpath=//div[@webix_tm_id='admin.pagedisplayconfig']
${SIDEBAR_SKILLSET_MGMT}               xpath=//div[@webix_tm_id='admin.skillsetmgmt']
${SIDEBAR_SYSTEM_CONFIG}               xpath=//div[@webix_tm_id='admin.systemconfig']
${SIDEBAR_TERM_CONS_MGMT}             xpath=//div[@webix_tm_id='admin.tncmgmt']
${SIDEBAR_PARTNER_MGMT}                xpath=//div[@webix_tm_id='admin.partnermgmt']
${SIDEBAR_FORM_TEMPLATE_MGMT}          xpath=//div[@webix_tm_id='admin.templatemgmt']
${SIDEBAR_SERVICE_LEVEL_AGREEMENT}     xpath=//div[@webix_tm_id='admin.servicelevelagreement']
${SIDEBAR_ADDITIONAL_INFO_FORM}        xpath=//div[@webix_tm_id='admin.additionalinfomgmt']
${SIDEBAR_USER_GROUP_MGMT}            xpath=//div[@webix_tm_id='admin.usergroups']

# Resources Sidebar
${SIDEBAR_RESOURCE_MGMT}                  xpath=//div[@webix_tm_id='admin.resourcemgmt']
${SIDEBAR_TENANT_RESOURCE_MGMT}           xpath=//div[@webix_tm_id='admin.tenantresourcemgmt']
${SIDEBAR_RESOURCE_PARTNER_LIST}          xpath=//div[@webix_tm_id='admin.resourcepartnerlist']

# Audit/Logs Sidebar
${SIDEBAR_TICKET_STATUS_LOG}              xpath=//div[@webix_tm_id='od.ticketstatuslog']
${SIDEBAR_AUDIT_TRAIL}                    xpath=//div[@webix_tm_id='admin.audittrail']
${SIDEBAR_EAI_LOG}                        xpath=//div[@webix_tm_id='admin.eailog']
${SIDEBAR_DEVICE_STATUS_LOG}              xpath=//div[@webix_tm_id='admin.devicestatuslog']
${SIDEBAR_RESOURCE_SESSION_LOG}           xpath=//div[@webix_tm_id='admin.resourcesessionlog']
${SIDEBAR_TRANSACTION_LOG}                xpath=//div[@webix_tm_id='od.transactionlog']
${SIDEBAR_EAI_OUTBOUND}                   xpath=//div[@webix_tm_id='admin.eaioutbound']
