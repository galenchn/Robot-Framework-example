*** Settings ***
Library  Selenium2Library

Resource  ../Resources/Common.robot
Resource  ../Resources/GetStarted.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${ENVIRONMENT} =  ssense
${BROWSER} =  chrome
&{URL}  gtv=https://web.gtv.org  ssense=https://www.ssense.com/en-cn

*** Keywords ***


*** Test Cases ***
Open Browser Nav to SSense and Search for Shirt
    set log level  Debug
    Set Window Size 	1250 	930

    GetStarted.Navigate to Landing Page
    sleep  1s
    Common.Click When Available  xpath=//*[@id="app"]/div[1]/header/div[1]/i
    sleep  1s
    Common.Click When Available  xpath=//*[@id="app"]/div[1]/header/div/div/nav[1]/ul[1]/li[4]/div/a
    sleep  1s
    Input Text  id=search-form-input  shirt
    Press Keys  xpath=//input[@id='search-form-input']  RETURN
    sleep  3s
