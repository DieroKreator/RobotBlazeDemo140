*** Settings ***
Library    SeleniumLibrary
Library    DateTime

Resource    compra_page.robot
Resource    confirmacao_page.robot
Resource    reserva_page.robot
Resource    home_page.robot

*** Variables ***
${timeout}    5000ms
${url}        https://www.blazedemo.com/
${browser}    Chrome
${date}

*** Keywords ***
Abrir navegador
    Register Keyword To Run On Failure    Tirar Screenshot
    Open Browser    url=${url}    browser=${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10000ms
    Wait Until Element Is Visible    css=a.btn.btn-navbar   ${timeout}

Fechar navegador
    Sleep    500ms    
    Close Browser

Obter Data e hora
    ${date} =    Get Current Date
    ${date} =    Convert Date    ${date}    result_format=%Y.%m.%d_%H.%M.%S
    ${date}    Set Global Variable    ${date}

Tirar Screenshot    
    [Arguments]    ${screenshot_name}
    Capture Page Screenshot    screenshots/blazedemo/${date}/${TEST_NAME}/${screenshot_name}.jpg
