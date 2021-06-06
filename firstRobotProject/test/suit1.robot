*** Settings ***
Library    SeleniumLibrary   
Suite Setup   Log  Settttup
Suite Teardown    Log  tearDDDDown
Test Setup     Log  TestttSetup
Test Teardown    Log  TestTTTeardown

Default Tags     santiy

*** Test Cases ***
MyFristTest
    [Tags]   smoke
    Log  testOne
MySecondTest
    Log  testTwo
    Set Tags    regression1
    Remove Tags    regression1
SeleniumTest
    Open Browser    ${URL}   chrome
    Set Browser Implicit Wait    2
    LoginSteps
    Click Element     id=welcome
    Click Link        link=Logout         
    Close Browser
***Variables***
${URL}   https://opensource-demo.orangehrmlive.com/
@{credentials}    Admin    admin123
&{loginData}  usrName=Admin     password=admin123

***Keywords***
LoginSteps
    Input Text        id=txtUsername    @{credentials}[0]
    Input Password    name=txtPassword    &{loginData}[password]
    Click Button      id=btnLogin


    
    
        