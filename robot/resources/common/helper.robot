*** Settings ***
Resource  global_setup.robot

*** Keywords ***
Decrypt Username and Password
  ${D_USERNAME}=  Get Decrypted Text  ${USERNAME}
  Set Suite Variable  ${USERNAME}  ${D_USERNAME}
  ${D_PASSWORD}=  Get Decrypted Text  ${PASSWORD}
  Set Suite Variable  ${PASSWORD}  ${D_PASSWORD}

User Succesfully Logged In
  Open Browser  ${LOGIN_URL}  chrome
  Maximize Browser Window
  Wait Until Element is visible  ${USERNAME_FIELD}
  Input Text  ${USERNAME_FIELD}  ${USERNAME}
  Input Text  ${PASSWORD_FIELD}  ${PASSWORD}
  Click Element  ${LOG_IN_BUTTON}
  Wait Until Element Is Not Visible  ${LOG_IN_BUTTON}  10s
  Location should contain  ${HOMEPAGE_URL}