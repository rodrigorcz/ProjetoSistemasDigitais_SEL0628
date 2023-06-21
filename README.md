# ProjetoSistemasDigitais_SEL0628
Repositório utilizado para a hospedagem dos arquivos e codigos utilizados no projeto final da disciplina de Sistemas Digitais (SEL0628) cursada no primeiro semestre de 2023.

---
# Participantes

André Jacob (13864673) <br>
Gabriela Passos de Andrade (12625142) <br>
Henrique de Oliveira Araujo (13863950) <br>
Marcus Vinicius da Silva (13833150) <br>
Rafael Cunha Bejes Learth (13676367) <br>
Rodrigo Rodrigues (13695362) <br>

---
# Parte 1
O projeto consiste no desenvolvimento de um Decodificador BCD para Display de 7 Segmentos, com a opção de configurar a saída para um display de ânodo comum ou cátodo comum. Serão apresentados a Tabela Verdade, os Mapas de Karnaugh, as Expressões Booleanas e o Circuito Lógico. <br> <br>
O esquemático (RTL) será implementado utilizando a linguagem de descrição de hardware (HDL) Verilog, com quatro técnicas distintas: Primitivas ou Rede de Ligações, Declarações Concorrentes com Operadores Lógicos, Declarações Concorrentes com Operador Ternário e Declaração Procedural ou Comportamental. <br>

Para a implementação desse decodificador, foi construido a seguinte tabela verdade:

<details>
    <summary> Tabela Verdade</summary>

| bit3 | bit2 | bit1 | bit0 | T | a | b | c | d | e | f | g |
|------|------|------|------|---|---|---|---|---|---|---|---|
| 0    | 0    | 0    | 0    | 0 | 1 | 0 | 0 | 0 | 1 | 1 | 1 |
| 0    | 0    | 0    | 0    | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 0 |
| 0    | 0    | 0    | 1    | 0 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
| 0    | 0    | 0    | 1    | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 0    | 0    | 1    | 0    | 0 | 0 | 1 | 1 | 1 | 1 | 0 | 1 |
| 0    | 0    | 1    | 0    | 1 | 1 | 1 | 0 | 1 | 1 | 0 | 1 |
| 0    | 0    | 1    | 1    | 0 | 1 | 0 | 0 | 1 | 1 | 1 | 0 |
| 0    | 0    | 1    | 1    | 1 | 1 | 1 | 1 | 1 | 0 | 0 | 1 |
| 0    | 1    | 0    | 0    | 0 | 0 | 0 | 1 | 1 | 1 | 1 | 1 |
| 0    | 1    | 0    | 0    | 1 | 0 | 1 | 1 | 0 | 0 | 1 | 1 |
| 0    | 1    | 0    | 1    | 0 | 1 | 1 | 1 | 0 | 1 | 1 | 1 |
| 0    | 1    | 0    | 1    | 1 | 1 | 0 | 1 | 1 | 0 | 1 | 1 |
| 0    | 1    | 1    | 0    | 0 | 1 | 1 | 1 | 0 | 0 | 1 | 1 |
| 0    | 1    | 1    | 0    | 1 | 1 | 0 | 1 | 1 | 1 | 1 | 1 |
| 0    | 1    | 1    | 1    | 0 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 0    | 1    | 1    | 1    | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1    | 0    | 0    | 0    | 0 | 1 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1    | 0    | 0    | 0    | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |
| 1    | 0    | 0    | 1    | 0 | 1 | 0 | 1 | 1 | 1 | 1 | 1 |
| 1    | 0    | 0    | 1    | 1 | 1 | 1 | 1 | 0 | 0 | 1 | 1 |
| 1    | 0    | 1    | 0    | 0 | 1 | 0 | 1 | 1 | 0 | 1 | 1 |
| 1    | 0    | 1    | 0    | 1 | 1 | 1 | 1 | 0 | 1 | 1 | 1 |
| 1    | 0    | 1    | 1    | 0 | 0 | 1 | 1 | 0 | 0 | 1 | 1 |
| 1    | 0    | 1    | 1    | 1 | 0 | 0 | 1 | 1 | 1 | 1 | 1 |
| 1    | 1    | 0    | 0    | 0 | 1 | 1 | 1 | 1 | 0 | 0 | 1 |
| 1    | 1    | 0    | 0    | 1 | 1 | 0 | 0 | 1 | 1 | 1 | 0 |
| 1    | 1    | 0    | 1    | 0 | 1 | 1 | 0 | 1 | 1 | 1 | 0 |
| 1    | 1    | 0    | 1    | 1 | 0 | 1 | 1 | 1 | 1 | 0 | 1 |
| 1    | 1    | 1    | 0    | 0 | 0 | 1 | 1 | 0 | 0 | 0 | 0 |
| 1    | 1    | 1    | 0    | 1 | 1 | 0 | 0 | 1 | 1 | 1 | 1 |
| 1    | 1    | 1    | 1    | 0 | 1 | 1 | 1 | 1 | 1 | 1 | 0 |
| 1    | 1    | 1    | 1    | 1 | 1 | 0 | 0 | 0 | 1 | 1 | 1 |

</details>

---




### Mapas de Veitch-Karnaugh

A partir da tabela verdade foi possível desenvolver os mapas de Veitch-Karnaugh: 
![mapasvk](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/b910e0ae-cfaa-44c8-95ca-ce8745de2ca5)

Com isso, verificou-se as seguintes expressões booleana de saída:
<br>
``` bash
a = (/bit2 /bit1 /bit0) + (/bit3 bit0 /T) + (/bit3 bit1 T) + (/bit3 bit2 bit0) + (bit2 bit0 /T) + (/bit3 bit2 bit1) + (bit2 bit1 T) + (bit3 /bit2 /bit1) + (bit3 /bit2 /bit0) + (bit3 /bit1 /bit0)

b = (/bit3 /bit2 T) + (/bit3 /bit1 /bit0 T) + (/bit2 /bit0 T) + (/bit3 bit1 /bit0 /T) + (bit2 bit0 /T) + (/bit3 bit2 bit1 bit0) + (bit3 /bit2 /bit1 /bit0) + (bit3 /bit1 bit0 T) + (bit3 bit1 bit0 /T) + (bit3 bit2 /T)

c = (/bit2 /bit1 T) + (/bit2 bit0 T) + (/bit1 bit0 T) + (bit1 /bit0 /T) + (/bit3 bit2) + (bit3 /bit2) + (bit3 /bit0 /T) + (bit3 bit1 /T)

d = (/bit2 /bit1 /bit0 T) + (/bit2 /bit1 bit0 /T) + (/bit3 /bit2 bit1) + (/bit2 bit1 /bit0 /T) + (/bit2 bit1 bit0 T) + (bit2 /bit1 /bit0 /T) + (bit2 /bit1 bit0 T) + (bit2 bit1 /bit0 T) + (bit2 bit1 bit0 /T) + (bit3 bit2 /bit1)

e = (/bit3 /bit2 /bit0) + (/bit3 /bit1 /T) + (/bit3 bit0 /T) + (/bit1 bit0 /T) + (bit1 /bit0 T) + (bit3 /bit0 T) + (bit3 bit1 T) + (bit3 bit2 bit0)

f = (/bit3 /bit1 /bit0) + (/bit1 /bit0 T) + (bit0 /T) + (/bit3 bit2 /bit1) + (/bit3 bit2 /bit0) + (bit3 /bit2 bit0) + (bit3 /bit2 bit1) + (bit3 bit1 T)

g = (/bit3 /bit1 /T) + (/bit3 bit1 /bit0) + (/bit2 bit1 T) + (/bit3 bit2 /bit1) + (/bit3 bit2 /T) + (bit2 /bit1 /bit0 /T) + (bit3 /bit2 T) + (bit3 /bit2 bit0) + (bit3 bit0 T) + (bit3 /bit2 bit1) + (bit3 bit1 T)
```

---
### Circuito Lógico

![logic_circuit](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/d7e52f36-421f-4c35-a5c1-b605734320d7)

---
### Modularização do circuito lógico (DEMUX)

![demux_logiccircuit](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/ffbf4669-d78d-4f67-9a57-8856e29a5470)

---

