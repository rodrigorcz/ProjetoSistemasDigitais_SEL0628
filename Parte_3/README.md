# Parte 3
 O contador digital BCD foi projetado para contar de 000 a 999, abrangendo um módulo de 1000. Isso significa que ele percorre todos os números decimais de três dígitos antes de reiniciar a contagem novamente.

 Para alcançar esse objetivo, o projeto é composto por três contadores assíncronos. Cada contador é responsável por uma posição decimal, sendo o primeiro contador o responsável pelos dígitos das centenas, o segundo pelos dígitos das dezenas e o terceiro pelos dígitos das unidades.

 Abaixo pode ser visualizado o seguinte circuito lógico do contador projetado: <br><br>
![image](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/62862399/a1743eeb-9ef5-4764-a21d-09737a0bbf0d)

 O contador utiliza um sinal de clock para sincronizar o processo de contagem. A cada pulso do clock, o contador incrementa ou reinicia a contagem, dependendo do valor atual. Além disso, ele posui um sinal de reset que quando acionado, o contador é resetado para o valor inicial. Já o sinal de enable é utilizado para habilitar ou desabilitar o contador.
