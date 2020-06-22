*** Settings ***
Library  Selenium2Library

*** Keywords ***
Navigate to Landing Page
    Go To  ${URL.${ENVIRONMENT}}


Click Login Link
    Click Element  ${Login_LinkLocator}

