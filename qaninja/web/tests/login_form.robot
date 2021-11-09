*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Case ***
Login com sucesso
    [tags]          login
    Go To           ${url}/login
    Login With      stark   jarvis!
    
    Should See Logged user     Tony Stark

Senha inválida
    Go To           ${url}/login
    Login With      stark    errada

    Should Contain Login Alert      Senha é invalida!

Usuário não existe
    
    Go To           ${url}/login
    Login With      invalido    errada
    
    Should Contain Login Alert      O usuário informado não está cadastrado!


*** Keywords ***
Login With 
    [Arguments]     ${username}   ${password}

    Input Text      css:input[name=username]      ${username}
    Input Text      css:input[name=password]      ${password}
    Click Element   class:btn-login

Should Contain Login Alert
    [Arguments]   ${expect_message}

    ${message}=     Get WebElement       id:flash
    Should Contain  ${message.text}      ${expect_message}

Should See Logged user
    [Arguments]   ${full_name}

    Page Should Contain  Olá, ${full_name}. Você acessou a área logada!