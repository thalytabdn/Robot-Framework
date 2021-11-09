*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Case ***
Verifica o valor ao informar o número da linha
    Go To                           ${url}/tables
    Table Row Should Contain        id:actors       1      	$ 10.000.000

Descobre a linha pelo texto e valida os demais valores
    Go To               ${url}/tables
    ${target}=          Get WebElement        xpath=.//tr[contains(., '@chadwickboseman')]  
    #Imprime o resultado no relatório
    Log                 ${target.text}
    Should Contain      ${target.text}             Pantera Negra	
    Should Contain      ${target.text}             $ 700.000  