*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${firstname}   xpath=//input[contains(@name,'firstname')]
${lastname}    xpath=//input[contains(@name,'lastname')]
${mobile}       xpath=//input[contains(@name,'reg_email__')]
${password}    xpath=//input[@data-type='password']
${genderA}    xpath=//input[contains(@id,'u_0_a')]
${genderB}    xpath=//input[@type='radio'][contains(@id,'9')]
${submit}    xpath=//button[contains(@id,'u_0_w')]
     
*** Test Cases ***
Go to Facebook 1
    Open Browser    http://facebook.com    chrome
    Maximize Browser Window
    Input Text    ${firstname}    Ico        
    Input Text    ${lastname}    Boi
    Input Text    ${mobile}     09442873737387
    Input Text    ${password}    icoboipalaboi
    Element Should Be Visible    xpath=//input[contains(@id,'u_0_a')]
    Click Button  ${genderA} 
    Click Button  ${submit}

Go to Facebook 2
    Open Browser    http://facebook.com    chrome
    Maximize Browser Window
    Enter values in Facebook Page 

*** Keywords ***
Enter Values in Facebook Page
    Input Text    ${firstname}    Kulin
    Input Text    ${lastname}    Cute
    Input Text    ${mobile}    098782677333
    Input Text    ${password}    iloveicoboi


    
    