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
## Parte 1

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


![mapasvk](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/9950a8c0-31d2-479d-8638-0695bf58cf94)


</details>

---
## Circuito Lógico

![logic_circuit](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/d7e52f36-421f-4c35-a5c1-b605734320d7)

---
## Modularização do circuito lógico (DEMUX)

![demux_logiccircuit](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/ffbf4669-d78d-4f67-9a57-8856e29a5470)

---

