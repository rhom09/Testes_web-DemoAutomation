*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${url}=     http://demo.automationtesting.in

*** Keywords ***
Nova Sessão
    Open Browser        ${url}      chrome
    #Maximize Browser Window

Encerra Sessão
    Capture Page Screenshot
    Close Browser
    
#### DADO
que esteja na tela de cadastro
    Go To       ${url}/Register.html

#### QUANDO
preencho todo o formulario
    Input Text          ${formRegister.firstName}       ${preencherForm.firstName}
    Input Text          ${formRegister.lastName}        ${preencherForm.lastName}
    Input Text          ${formRegister.adress}          ${preencherForm.adress}
    Input Text          ${formRegister.email}           ${preencherForm.email}
    Input Text          ${formRegister.phone}           ${preencherForm.phone}

    Click Element       ${formRegister.gender}
    Click Element       ${formRegister.hobbies}
    Click Element       ${formRegister.languages}
    Click Element       ${formRegister.cmbLanguages}  

    Select From List By value       ${formRegister.skills}      ${preencherForm.skills}
    #Select From List By value       ${formRegister.country}      ${preencherForm.country}
    Select From List By value       ${formRegister.selectCountry}      ${preencherForm.selectCountry}
    Select From List By value       ${formRegister.year}      ${preencherForm.year}
    Select From List By value       ${formRegister.month}      ${preencherForm.month}
    Select From List By value       ${formRegister.day}      ${preencherForm.day}
   
    Input Text      ${formRegister.password}        ${preencherForm.password}
    Input Text      ${formRegister.confirmPass}        ${preencherForm.confirmPass}  

    Choose File     ${formRegister.image}       ${EXECDIR}/flash.png  

    Click Element       ${formRegister.submit}

#### ENTÃO
vejo a mensagem de sucesso
    Element Text Should Be        ${formRegister.text}      Automation Demo Site 
    Scroll Element Into View        ${formRegister.text}
