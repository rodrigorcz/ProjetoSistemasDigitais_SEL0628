<h1>ProjetoSistemasDigitais_SEL0628</h1>

Repositório utilizado para a hospedagem dos arquivos e codigos utilizados no projeto final da disciplina de Sistemas Digitais (SEL0628) cursada no primeiro semestre de 2023. <br>

O Projeto foi separado em 4 partes contendo em cada uma os código utilizados nos equematicos (RTL) utilizando a linguagem de descrição de hardware (HDL) Verilog, e um relatório mais detalhado com as informações utilizadas.<br>

<hr>

<h1>Participantes</h1>

André Jacob (13864673) <br>
Gabriela Passos de Andrade (12625142) <br>
Henrique de Oliveira Araujo (13863950) <br>
Marcus Vinicius da Silva (13833150) <br>
Rafael Cunha Bejes Learth (13676367) <br>
Rodrigo Rodrigues (13695362) <br>

<hr>

<h1>Parte 1</h1>
Inicialmente, queremos desenvolver um decodificador BCD para Display de 7 Segmentos, com a opção de configurar a saída para um display de ânodo comum ou cátodo comum. Serão apresentados a Tabela Verdade, os Mapas de Karnaugh, as Expressões Booleanas e o Circuito Lógico. <br> <br>
O esquemático (RTL) será implementado utilizando a linguagem de descrição de hardware (HDL) Verilog, com quatro técnicas distintas: Primitivas ou Rede de Ligações, Declarações Concorrentes com Operadores Lógicos, Declarações Concorrentes com Operador Ternário e Declaração Procedural ou Comportamental. <br><br>

O arquivo mais detalhado, com as especificações citadas se encontra em : <br>

[Relatório da Parte 1](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/tree/main/Parte_1)

<hr>

<h1>Parte 2</h1>
A segunda parte do trabalho consiste no desenvolvimento didático de três contadores compostos pelas estruturas clássicas (síncrona ou assíncrona) de flip-flops tipo D encadeados. Nesse sentido, cada um possui um algoritmo único, a saber: implementação modular para contagem síncrona e para assíncrona, implementação unitária com incremento e declaração procedural. Assim, será apresentado o Diagrama de Estados, a Tabela de Transição de Estados, os Mapas de Karnaugh, as Expressões Booleanas e o Circuito Lógico implementado para a criação de um contador síncrono crescente de década (BCD).<br> <br>

O esquemático (RTL) será implementado utilizando a linguagem de descrição de hardware (HDL) Verilog para implementar os seguintes contadores binários crescentes parametrizáveis de 'width' bits com 'enb', 'rst_s', 'cnt_max' e 'ck':<br> <br>
-Assíncrono, utilizando o Flip-flop Tipo-D descrito anteriormente, com generate e Rede de Ligações<br>
-Síncrono, utilizando o Flip-flop Tipo-D descrito anteriormente, com generate e Rede de Ligações<br>
-Com incremento, utilizando Declaração Procedural ou Comportamental (always if-else)<br><br>

O arquivo mais detalhado, com as especificações citadas se encontra em : <br>

[Relatório da Parte 2](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/tree/main/Parte_2)

<hr>

<h1>Parte 3</h1>
A terceira parte do trabalho basea-se na implementação de um contador digital BCD de três dígitos (de 000 a 999) por meio da linguagem de descrição de hardware (HDL) Verilog, utilizando os componentes os quais foram implementados anteriormente.<br> <br>

O arquivo com mais detalhes a respeito dessa etapa do trabalho se encontra em : <br>

[Relatório da Parte 3](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/tree/main/Parte_3)

<hr>

<h1>Parte 4</h1>
A quarta e última parte do trabalho resume-se na implementação, na linguagem de descrição de hardware (HDL) Verilog, de uma máquina de estados que tem o objetivo de controlar um conversor analógico para digital ADC (Analog to Digital Converter) do tipo rampa dupla (dual slope), o qual fará uso do contador BCD implementado na etapa anterior para a visualização do valor analógico convertido.<br> <br>

O controlador que será projetado nessa parte do trabalho é composto por uma máquina de estados que gera os sinais de controle, contadores decimais, registradores e conversores BCD para 7 segmentos. Os contadores executam a contagem dos períodos "tx" e "tm", e esses foram desenvolvidos na etapa anterior. Os registradores armazenam o valor da última contagem, permitindo a visualização da última medida nos displays de 7 segmentos. A operação deve ser iniciada com o acionamento da chave "ch_vm", e a máquina de estados deve aguardar o final da contagem, que é o sinal "enb_3=1". Após esse período, "tx", a chave "ch_ref" deve ser acionada, e a máquina tem que esperar a tensão na saída do integrador atingir o valor zero, que é o sinal "Vinit_z=1". Uma vez nesse sinal, o dado dos contadores deve ser transferido para os registradores no próximo ciclo de clock, atualizando os displays com o novo valor da tensão. A operação termina após o acionamento da chave "ch_zr" levando a saída do integrador para zero, assim como a inicialização dos contadores para zero.<br> <br>

Nessa etapa será apresentada a teoria de funcionamento de um ADC de rampa dupla, assim como o código em HDL do controlador e o circuito RTL correspondente, bem como o resultado da simulação.<br> <br>

O arquivo com mais detalhes, como também com as especificações encontra-se em : <br>


[Relatório da Parte 4](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/tree/main/Parte_4)