Psaltério
=========
Este é o repositório oficial das músicas do Psaltério (www.psalterio.net).
Todas as músicas estão no formato latex que permite criar uma impressão de qualidade tipográfica, exemplo:  [Separata ACRE 2014](https://github.com/psalterio/repository/blob/master/songbooks/acre-2014/separata_acre_2014.pdf?raw=true) e também gera a base de dados automaticamente para o novo site do psaltério (http://novo.psalterio.net/) e as novas mobile Apps (iOS7 e [Android](https://play.google.com/store/apps/details?id=net.psalterio.psalterioandroid)). É um verdadeiro 3 em 1 :)


Como ajudar
-----------
update de 19 de Setembro 2014
- temos vários mini projetos, um dos mais ambiciosos é o de criar partituras para todas as músicas. Se achas que podes ajudar envia-nos um email para psalterio.net@gmail.com.

**Mini Tutorial para fazer correcções directamente no GitHub**  
(serve perfeitamente para fazer a maior parte das correcões):  
1 - Abrir directamente o link da musica no github. Exemplo:  
https://github.com/psalterio/repository/blob/master/songs/pt/agradecer.tex  
2 - login no github (criar uma conta se ainda não tens). Qualquer pessoa com conta no github pode submeter alterações, que depois são revistas e autorizadas.   
3 - carregar no botão “Edit” no canto superior direito  
4 - fazer as correcções necessárias   
5 - carregar no botão “Propose file change”  
6 - carregar no botão “Send Pull request”. Done!  
(depois nós recebemos uma notificação de que existem alterações a fazer e podemos aprovar.)

7 - finalmente para propagar as actualizações do github para a base de dados do psalterio é preciso correr este script
http://www.psalterio.net/workshop/tools/db/update_table_songs.php

**Tutorial para fazer correcções no teu PC**  
um pouco mais complicado que o mini tutorial mas é melhor a longo termo para quem faz muitas correcções: https://www.youtube.com/watch?v=Eu-_wI-p-Hs



outras coisas a fazer
---------------------
* converter todos os bemois ("b" em "&") 
* converter todos os acordes de sétima (7), quarta (4), etc para os respectivos sobreescritos
 * exemplo em latex sobrescrito (eu sei que parece complicado, mas depois de fazer uns quantos percebe-se melhor)
  * "D7" fica "**D$^{7}$**"
  * "D9 5+" fica "**D$^{9 5+}$**"
- corrigir a metrica e o alinhamento dos acordes
- comparar com as musicas originais do psalterio > scan_psalterio_original 


Latex
-----
As músicas neste repositório estão em formato latex. Estas são algumas das regras mais importantes para a formatação correcta das músicas e acordes em latex:
- acordes são sempre escritos no seguinte formato \\[acorde aqui]
 * exemplo \\[D]
- acorde com numero sobrescrito
 * "D7" fica "**D$^{7}$**"
 * "D9 5+" fica "**D$^{9 5+}$**"
 * 
 
Acordes no Psaltério
--------------------

Resumo do standard usado:
- C é um acorde de dó maior (dó, mi, sol)
- Cm é um acorde de dó menor (dó, mi-b, sol)
- C7+ é o acorde de sétima maior (dó, mi, sol, si). C7+ é o mesmo que Cmaj7 ou CM7 noutras notações.
- C4 é um acorde suspenso de quarta (dó, fá, sol). É o mesmo que Csus4 ou Csus noutras notações.
- C4(7) é um acorde de 4a suspensa com sétima menor (dó, fá, sol, si-b). Noutras notações aparece normalmente como C7sus4.

O standard dos acordes no psaltério está nestes mapas de acordes:
- [1](https://github.com/psalterio/repository/blob/master/songbooks/psalterio/scan_psalterio_original/0-3_mapa_acordes.jpg)
- [2](https://github.com/psalterio/repository/blob/master/songbooks/psalterio/scan_psalterio_original/0-4_mapa_acordes.jpg)
- [3](https://github.com/psalterio/repository/blob/master/songbooks/psalterio/scan_psalterio_original/0-5_mapa_acordes.jpg)
- [4](https://github.com/psalterio/repository/blob/master/songbooks/psalterio/scan_psalterio_original/0-6_mapa_acordes.jpg)

Links do Projecto
-----------------

- site oficial: http://www.psalterio.net
- wikipedia   : [http://pt.wikipedia.org/wiki/Psaltério](http://pt.wikipedia.org/wiki/Psalt%C3%A9rio)
- youtube     : https://www.youtube.com/user/psalterio7
- twitter : https://twitter.com/psalterio
- facebook: https://www.facebook.com/psalterio.pt
- [Android App](https://play.google.com/store/apps/details?id=net.psalterio.psalterioandroid)
