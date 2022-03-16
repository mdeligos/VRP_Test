*** Settings ***
Resource  ../variables/exam_constants.robot

*** Keywords ***
User Navigates to Account Page
  Go to  ${ACCOUNT_URL}

User Create an Account
  Wait Until Element is Visible  ${NEW_ACCOUNT_BUTTON}  10s
  Click Element  ${NEW_ACCOUNT_BUTTON}
  ${fake_account_name}=  FakerLibrary.Company
  ${fake_website_name}=  FakerLibrary.Uri
  ${fake_description_name}=  FakerLibrary.Sentences
  Set Suite Variable  ${F_ACCOUNT_NAME}  ${fake_account_name}
  Wait Until Element is Visible  ${ACCOUNT_NAME_FIELD}  10s
  Input Text  ${ACCOUNT_NAME_FIELD}  ${F_ACCOUNT_NAME}
  Input Text  ${WEBSITE_FIELD}  ${fake_website_name}
  Input Text  ${DESCRIPTION_FIELD}  ${fake_description_name}
  Click Element  ${SAVE_BUTTON}

User should Successfully Create an Account
  Wait Until Element Contains  ${ACCOUNT_NAME}  ${F_ACCOUNT_NAME}  10s

User Created an Account Successfully
  Go to  ${ACCOUNT_URL}
  Wait Until Element is Visible  ${NEW_ACCOUNT_BUTTON}  10s
  Click Element  ${NEW_ACCOUNT_BUTTON}
  ${fake_account_name}=  FakerLibrary.Company
  ${fake_website_name}=  FakerLibrary.Uri
  ${fake_description_name}=  FakerLibrary.Sentences
  Set Suite Variable  ${F_ACCOUNT_NAME}  ${fake_account_name}
  Wait Until Element is Visible  ${ACCOUNT_NAME_FIELD}  10s
  Input Text  ${ACCOUNT_NAME_FIELD}  ${F_ACCOUNT_NAME}
  Input Text  ${WEBSITE_FIELD}  ${fake_website_name}
  Input Text  ${DESCRIPTION_FIELD}  ${fake_description_name}
  Click Element  ${SAVE_BUTTON}
  Wait Until Element Contains  ${ACCOUNT_NAME}  ${F_ACCOUNT_NAME}  10s

User Edit an Account
  Wait Until Element is Visible  ${EDIT_BUTTON}  10s
  Click Element  ${EDIT_BUTTON}
  ${fake_account_name}=  FakerLibrary.Company
  Set Suite Variable  ${F_ACCOUNT_NAME}  ${fake_account_name}
  Wait Until Element is Visible  ${EDIT_ACCOUNT_NAME_FIELD}  10s
  Clear Element Text  ${EDIT_ACCOUNT_NAME_FIELD}
  Input Text  ${EDIT_ACCOUNT_NAME_FIELD}  ${F_ACCOUNT_NAME}
  Click Element  ${SAVE_BUTTON}

User should Successfully Edit an Account
  Wait Until Element Contains  ${ACCOUNT_NAME}  ${F_ACCOUNT_NAME}  10s