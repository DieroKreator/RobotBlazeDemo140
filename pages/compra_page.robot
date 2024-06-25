*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_compra}    css=h2
# ${timeout}    5000ms

*** Keywords ***
Preencher campos do formulario
    Input Text    id=inputName    John Smith
    Input Text    id=city    Paris
    Input Text    id=state    Paris
    Input Text    id=zipCode    12345
    Input Text    id=creditCardNumber    4111111111111111
    Input Text    id=creditCardYear    2027

Clicar no botao de compra de voo
    Click Element    css=.btn-primary

