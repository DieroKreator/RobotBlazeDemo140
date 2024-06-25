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
    Entao sou direcionado para a pagina de reserva
    Quando clico no botao do primeiro item da lista
    Entao sou direcionado para a pagina de compra
    E preencho os campos do formulario
    E clico no botao de compra da passagem
    Entao sou direcionado para a pagina de confirmacao
    E a compra é finalizada com sucesso

*** Keywords ***
Dado que acesso o site SauceDemo 