*** Settings ***
Library  Selenium2Library

Resource  ../Resources/Common.robot
Resource  ../Resources/GetStarted.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${ENVIRONMENT} =  gtv
${BROWSER} =  chrome
&{URL}  gtv=https://web.gtv.org  ssense=https://www.ssense.com/en-cn
&{USER}  Email=fakeaccount@gtv.info  Password=password

*** Keywords ***


*** Test Cases ***
Open Browser and nav to GTV and search site for 郭
    set log level  Debug
    Set Window Size 	1250 	930

    GetStarted.Navigate to Landing Page
    Common.Click When Available  id=search-input
    Input Text  id=search-input  郭
    Common.Click When Available  css=.search-btn
    Common.Click When Available  css=.swiper-slide-active .headpicimg
    sleep  5s
