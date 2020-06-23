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
Search in site and go to the first find
    [Arguments]  ${keyword}
    Common.Click When Available  id=search-input
    Input Text  id=search-input  ${keyword}
    Common.Click When Available  css=.search-btn
    Common.Click When Available  css=.swiper-slide-active .headpicimg

Verify Seeing Search result
    [Arguments]  ${search}
    sleep  2s
    Element Should Contain  xpath=/html/body/div[1]/div[3]/div[2]/div/div[1]/span[2]  ${search}

*** Test Cases ***
Open Browser and nav to GTV and search site for 郭
    set log level  Debug
    Set Window Size 	1250 	930

    GetStarted.Navigate to Landing Page

    Search in site and go to the first find  郭

    Verify Seeing Search result  郭文贵MILES

    sleep  1s
