# Parte 2

A segunda parte do trabalho vigente consiste no desenvolvimento didático de três contadores compostos pelas estruturas clássicas (síncrona ou assíncrona) de flip-flops tipo D encadeados. Nesse sentido, cada um deve conter um algoritmo único, a saber: implementação modular para contagem síncrona e para assíncrona, implementação unitária com incremento e declaração procedural. A seguir, será apresentado a metodologia utilizada para o desenvolvimento de um contador síncrono crescente de década (BCD).<br> 

<hr>

Inicialmente, foi desenvolvido um diagrama de estados para o contador de 4 bits o qual é aplicado no ciclo que inicia em 0000, para o número 0, e termina em 1001, para o número 9, conforme a seguinte imagem:<br>

<div align ="center">
    <img src ="img/Diagrama.jpeg" width="70%" alt="Diagrama-de-Estado">
</div>

<br>
Em seguida, utilizando flip flop Tipo-D para 4 bits, foi montada uma tabela de excitação para a contagem de década: <br><br>

<div align ="center">
    <img src ="img/tabelav.jpeg" width="70%" alt="tabelav">
</div>

<br>
A partir dos dados analisados, foi possível a obtenção das expressões booleanas que descrevem o circuito, por meio da utilização de Mapas de Karnaught, conforme: <br><br>

<div align ="center">
    <img src ="img/mapa_k.jpeg" width="70%" alt="mapa-k">
</div>

<br>
Em posse das expressões booelanas, foi possível a criação do circuito lógico que descreve o contador de década utilizando flip flops D: <br> <br>
<div align ="center">
    <img src ="img/Circ3.jpeg" width="70%" alt="Circuito-1">
</div>

Por fins didáticos, é válido mencionar que o circuito apresentado pode ser também implemetado a partir do circuito integrado 74163, assim como apresentado: <br> <br>
<div align ="center">
    <img src ="img/Circ1.jpeg" width="70%" alt="Circuito-3">
</div>
