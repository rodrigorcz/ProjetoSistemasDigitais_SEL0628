# Parte 3
 O contador digital BCD foi projetado para contar de 000 a 999, abrangendo um módulo de 1000. Isso significa que ele percorre todos os números decimais de três dígitos antes de reiniciar a contagem novamente.

 Para alcançar esse objetivo, o projeto é composto por três contadores assíncronos. Cada contador é responsável por uma posição decimal, sendo o primeiro contador o responsável pelos dígitos das centenas, o segundo pelos dígitos das dezenas e o terceiro pelos dígitos das unidades.

 Abaixo pode ser visualizado o seguinte circuito lógico do contador projetado: <br><br>
![image](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/62862399/a1743eeb-9ef5-4764-a21d-09737a0bbf0d)

 ### Especificações do circuito:
 O contador utiliza um sinal de clock para sincronizar o processo de contagem. A cada pulso do clock, o contador incrementa ou reinicia a contagem, dependendo do valor atual. Além disso, ele posui um sinal de reset que quando acionado, o contador é resetado para o valor inicial. Já o sinal de enable é utilizado para habilitar ou desabilitar o contador.
 A saída de cada contador passa por um decoder de binário para 7 segmentos, sendo que cada um dos 3 bits de saída se liga a um display de 7 segmentos, criando o input para os 3 displays necessários no projeto para exibir dígitos de 0 a 999.
  De forma adicional, foram utilizados registradores com a finalidade de armazenar o valor atual do contador,permitindo que o valor seja mantido mesmo quando o clock ou o sinal de enable são desabilitados. Dessa forma, evita-se a perda de contagem durante eventos transitórios ou falhas de alimentação.
