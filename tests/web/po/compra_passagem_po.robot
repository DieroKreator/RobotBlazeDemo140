*** Settings ***
Library    SeleniumLibrary
Resource    ../../../pages/base_page.robot


*** Test Cases ***
Comprar Passagem Portland-Berlin
    Tirar Screenshot    1-Home
    # Selecionar partida   Portland
    # Selecionar destino    Berlin
    Tirar Screenshot    2-Partida e Destino Selecionados
    Clicar no botao de confirmacao    
    Element Text Should Be    ${titulo_reserva}    Flights from Paris to Buenos Aires: 
    Tirar Screenshot    3-Lista de voos
    Clicar no botao de selecionar um voo
    Element Text Should Be    ${titulo_compra}    Your flight from TLV to SFO has been reserved. 
    Tirar Screenshot    4-Comprar
    Preencher campos do formulario
    Tirar Screenshot    5-Preenchimento
    Clicar no botao de compra de voo
    Element Text Should Be    ${titulo_confirmacao}    Thank you for your purchase today!
    Tirar Screenshot    6-Confirmacao