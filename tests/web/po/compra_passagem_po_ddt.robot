*** Settings ***
Resource    ../../../pages/base_page.robot
Test Template    Comprar Passagem

*** Test Cases ***
TC001    Portland    Berlin    Flights from Portland to Berlin:
TC002    Boston    Rome    Flights from Boston to Rome:
TC003    Mexico City   Buenos Aires    Flights from Mexico City to Buenos Aires:

*** Keywords ***
Comprar Passagem
    [Arguments]    ${cidade_partida}    ${cidade_destino}    ${titulo_reserva_ddt} 
    Tirar Screenshot    1-Home
    Clicar no dropdown Partida
    Select From List By Value    ${select_cidade_partida}    ${cidade_partida}
    Clicar no dropdown Destino
    Select From List By Value    ${select_cidade_destino}    ${cidade_destino}
    Tirar Screenshot    2-Partida e Destino Selecionados
    Clicar no botao de confirmacao    
    Element Text Should Be    ${titulo_reserva_locator}    ${titulo_reserva_ddt} 
    Tirar Screenshot    3-Lista de voos
    Clicar no botao de selecionar um voo
    Element Text Should Be    ${titulo_compra_locator}    Your flight from TLV to SFO has been reserved. 
    Tirar Screenshot    4-Comprar
    Preencher campos do formulario
    Tirar Screenshot    5-Preenchimento
    Clicar no botao de compra de voo
    Element Text Should Be    ${titulo_confirmacao}    Thank you for your purchase today!
    Tirar Screenshot    6-Confirmacao