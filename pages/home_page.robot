*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${timeout}    5000ms

*** Keywords ***
# Selecionar partida
#     Click Element    css=

# Selecionar destino

Clicar no botao de confirmacao    
    Click Element    css=input.btn.btn-primary
    # Wait Until Element Contains    css=h3    Flights from Paris to Buenos Aires:    ${timeout}