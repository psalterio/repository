## Mini Tutorial para fazer correcções directamente no GitHub**  
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


## Tutorial para fazer correcções no teu PC
um pouco mais complicado que o mini tutorial mas é melhor a longo termo para quem faz muitas correcções: https://www.youtube.com/watch?v=Eu-_wI-p-Hs


## outras coisas a fazer
* converter todos os bemois ("b" em "&") 
* converter todos os acordes de sétima (7), quarta (4), etc para os respectivos sobreescritos
 * exemplo em latex sobrescrito (eu sei que parece complicado, mas depois de fazer uns quantos percebe-se melhor)
  * "D7" fica "**D$^{7}$**"
  * "D9 5+" fica "**D$^{9 5+}$**"
- corrigir a metrica e o alinhamento dos acordes
- comparar com as musicas originais do psalterio > scan_psalterio_original 


## Latex
As músicas neste repositório estão em formato latex. Estas são algumas das regras mais importantes para a formatação correcta das músicas e acordes em latex:
- acordes são sempre escritos no seguinte formato \\[acorde aqui]
 * exemplo \\[D]
- acorde com numero sobrescrito
 * "D7" fica "**D$^{7}$**"
 * "D9 5+" fica "**D$^{9 5+}$**"
 * 
 
 
