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
    sleep  2s
    Common.Click When Available  xpath=//*[@id="app"]/div[1]/header/div[1]/i
    sleep  2s
    #Common.Click When Available  xpath=//*[@id="app"]/div[1]/header/div[2]/div/nav[1]/ul[1]/li[4]/div
    Common.Click When Available  xpath=//*[@id="app"]/div[1]/header/div[2]/div/nav[1]/ul[1]/li[4]/div/a
    #Common.Click When Available   xpath=//input[@id='search-form-input']
    sleep  2s
#    Execute Javascript    document.getElementById("search-form-input").innerHTML = "shirt";
#    Execute Javascript    document.getElementsByClassName('search-form')[0].click();
#    Input Text  xpath=//input[@id='search-form-input']  shirt
#    Press Key  xpath=//input[@id='search-form-input']  \\1
#    Press Key  xpath=//input[@id='search-form-input']  \\13
    Go To  ${URL.${ENVIRONMENT}}${/}en-cn/men?q=shirt
    sleep  3s
