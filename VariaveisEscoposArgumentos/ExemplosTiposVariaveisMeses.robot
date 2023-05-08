*** Settings ***
Documentation   Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS
*** Variable ***
#Simples
${SIMPLES}   Vamos ver os tipos de variáveis no robot!

#Tipo Lista (arrays) - separar itens com espaço duplo
@{MESES}    janeiro   fevereiro   março	 abril  maio  junho  julho  agosto  setembro  outubro  novembro  dezembro

#Tipo Dicionário (chave=valor) - separar cada chave=valor com espaço duplo
&{QUANTIDADE_DE_DIAS_DE_CADA_MES}    janeiro=31  fevereiro=28  março=31  abril=30  maio=31  junho=30  julho=31  agosto=31
...                                  setembro=30  outubro=31  novembro=30  dezembro=31

*** Test Cases ***
Caso de teste de exemplo 01
    Todos Os Meses Do Ano 01

*** Keywords ***
Uma keyword qualquer 01
    # Lendo um valor Simples
    Log    ${SIMPLES}

    # Lendo um item de uma Lista
    Log    Essa tem que ser março: ${MESES[2]} e essa tem que ser agosto: ${FRUTAS[7]}
    Log    Essa tem que ser abril: ${MESES[3]} e essa tem que ser maio: ${FRUTAS[4]}
    Log    Essa tem que ser junho: ${MESES[5]} e essa tem que ser julho: ${FRUTAS[6]}
    Log    Essa tem que ser janeiro: ${MESES[0]} e essa tem que ser fevereiro: ${FRUTAS[1]}
    Log    Essa tem que ser setembro: ${MESES[8]} e essa tem que ser desembro: ${FRUTAS[11]}
    Log    Essa tem que ser outubro: ${MESES[9]} e essa tem que ser novembro: ${FRUTAS[10]}

    # Lendo chaves de um Dicionário
    Log To Console    janeiro: ${MESES.janeiro} e fevereiro: ${MESES.fevereiro}
    Log To Console    março: ${MESES.março} e abril: ${MESES.abril}
    Log To Console    maio: ${MESES.maio} e junho: ${MESES.junho}
    Log To Console    julho: ${MESES.julho} e agosto: ${MESES.agosto}
    Log To Console    setembro: ${MESES.setembro} e outubro: ${MESES.outubro}
    Log To Console   novembro: ${MESES.novembro} e dezembro: ${MESES.dezembro}

