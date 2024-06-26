*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${titulo_reserva_locator}    css=h3

*** Keywords ***
Clicar no botao de selecionar um voo
    # Click Element    css=tr:nth-child(1) .btn
    Click Element    css:tr:nth-child(1) .btn

