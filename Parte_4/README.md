# Parte 4
 
  A quarta parte do projeto consiste em implementar uma máquina de estados com o objetivo de controlar um conversor analógico para digital do tipo rampa dupla , que utilize um contador de 000 a 999 para visualização do valor analógico convertido. Um ADC do tipo rampa dupla é comum em instrumentos de medição como voltímetros digitais, a seguir será mostrado como foi feita a implementação de tal circuito.  <br><br>

  Abaixo pode ser visualizado o seguinte circuito lógico da máquina de estados : <br><br>
 ![rtl_circuit](https://github.com/RodrigoRCZ/ProjetoSistemasDigitais_SEL0628/assets/85594694/d52d1994-aca1-4aad-89a4-ae4b290b4ec1)


 Nesse tipo de circuito o sinal de entrada e o sinal de uma fonte de referência são chaveados pelo clock de controle e esses, por sua vez, são aplicados à entrada de um circuito integrador. A rampa que é gerada pelo sinal de entrada é negativa, enquanto que a rampa gerada pelo sinal da fonte de referência é positiva. Como ambas são chaveadas, a rampa final terá uma inclinação a qual depende das duas. Como uma delas é fixa e a outra é o sinal de entrada, o sinal de saída pode ser usado para chavear o contador. <br> <br>

 Uma das vantagens do ADC de rampa dupla é a rejeição de sinais de ruído cuja frequêñcia tenha período igual ou submúltiplo do período do circuito integrador. No entanto, esse tipo de conversor também possui desvantagens, pois como seu tempo de conversão é da ordem de milissegundos, o que o faz lento, a utilização desses conversores fica limitada a instrumentos os quais suas tensões analógicas sejam de entrada DC ou de baixa variação. <br>
