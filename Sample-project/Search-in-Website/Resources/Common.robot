*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin Web Test
    set selenium timeout  30 seconds
    set log level  Debug

    Open Browser  about:blank  ${BROWSER}


Click When Available
    [Arguments]  ${elementLocator}
    Wait Until Element Is Enabled   ${elementLocator}   30s
    Click Element  ${elementLocator}


User Login
    [Arguments]  ${user}
    Click When Available  css=div:nth-child(1) > .van-cell .inputCls .van-field__control
    Input Text  xpath=(//input[@type='text'])[2]  ${user.Email}
    Input Text  xpath=(//input[@type='password'])[3]  ${user.Password}
    Click Element  css=.loginBtnCls


End Web Test
#    log  Close Browser
    Close Browser
