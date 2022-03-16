*** Settings ***
Documentation    VRP EXAM
Force Tags       EXAM
Suite Setup      Decrypt Username and Password
Test Setup       User Succesfully Logged In
Suite Teardown   Close All Browsers
Resource         ../resources/common/global_setup.robot
Resource         ../resources/keywords/exam.robot

*** Test Cases ***
User Create an Account and Validate
  [TAGS]  EXAM1
  Given User Navigates to Account Page
  When User Create an Account
  Then User should Successfully Create an Account

User Edit an Account and Validate
  [TAGS]  EXAM2
  Given User Created an Account Successfully
  When User Edit an Account
  Then User should Successfully Edit an Account