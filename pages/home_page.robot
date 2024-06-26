*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${dropdown_cidade_partida}    name=fromPort
${dropdown_cidade_destino}    name=toPort
${select_cidade_partida}    css:select[name="fromPort"] 
${select_cidade_destino}    css:select[name="toPort"]   
${timeout}    5000ms

*** Keywords ***
Clicar no dropdown Partida
    Click Element    ${dropdown_cidade_partida}

# Selecionar valor de Partida
#     Click Element    css:select[name="fromPort"]

Clicar no dropdown Destino
    Click Element    ${dropdown_cidade_destino} 

# Selecionar valor de Destino
#     Click Element    css:select[name="toPort"]

Clicar no botao de confirmacao    
    Click Element    css=input.btn.btn-primary
    # Wait Until Element Contains    css=h3    Flights from Paris to Buenos Aires:    ${timeout}