*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${s} =  q
${search} =  homeplus

*** Test Cases ***
test1
    [documentation]    test1
    [tags]    reggresion
    Open Browser    https://www.google.com/    Chrome
    input text    name:${s}     ${search}
   ${ele}    Get WebElement    //input[@class = 'gNO89b']
   Execute Javascript    arguments[0].click();     ARGUMENTS    ${ele}
    page should contain    home

