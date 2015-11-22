## Mini Tutorial para adicionar ou corrigir musicas

### 1) corrigir uma música no github - sem acesso directo ao repositorio (pull request)
este metodo serve perfeitamente para fazer a maior parte das correcões

1. Abrir directamente o link da musica no github. Exemplo:  
https://github.com/psalterio/repository/blob/master/songs/pt/agradecer.tex  
2. login no github (criar uma conta se ainda não tens). Qualquer pessoa com conta no github pode submeter alterações, que depois são revistas e autorizadas.   
3. carregar no botão “Edit” no canto superior direito  
4. fazer as correcções necessárias   
5. carregar no botão “Propose file change”  
6. carregar no botão “Send Pull request”. Done!  

depois nós recebemos uma notificação de que existem alterações a fazer e podemos aprovar.

### 2) corrigir uma música no github - com acesso directo ao repositorio
1. vai à pasta das [músicas no github](https://github.com/psalterio/repository/tree/master/songs/)
e abre a pasta "pt" para as musicas em Portugues, "en" em Ingles, etc.
2. faz as correcções necessárias na música (confirma que estás a usar o formato appropriado comparando com outras músicas já introduzidas ou através do [template](https://github.com/psalterio/repository/blob/master/songs/template_simple.tex))
3. finalmente para propagar as actualizações do github para a base de dados do 
psalterio é preciso correr este script http://www.psalterio.net/update


### 3) introduzir uma nova música no github - com acesso directo ao repositorio
Para introduzir uma nova música verifica que a música não existe no repositorio. 
Talvez a maneira mais fácil de verificar é ver a lista das músicas directamente aqui no gihub na 
pasta das músicas em Português: https://github.com/psalterio/repository/tree/master/songs/pt

Ok, se de facto a música não existe então segue os seguintes pontos:

1. verifica qual é o id da nova música a introduzir através deste link:  http://www.psalterio.net/workshop/tools/db/check_new_id.php
2. vai à pasta das músicas em português no github 
https://github.com/psalterio/repository/tree/master/songs/pt
3. no topo da página onde diz "repository/songs/pt/" carrega no " + " que está ao lado para adicionar um novo ficheiro.
4. escreve o nome do ficheiro. Exemplo "hino_dos_rebentos_198.tex" (agora estamos a introduzir o id da música no nome do ficheiro porque se houver músicas com titulos iguais - mesmo sendo differentes - evita-se um conflito, 
isto também serve para introduzir diferentes versões da mesma música)
5. copia o template. abre uma nova janela no teu browser e copia o conteúdo do template simples que está em 
https://github.com/psalterio/repository/blob/master/songs/template_simple.tex
6. onde diz "Title here" por o titulo da musica
7. adiciona o novo id = {198}
8. adiciona o nome do autor by = {Autor da musica}, se nao souberes o nome do autor deixa em branco
9. depois só falta adicionar a letra e os acordes em cada secção correspondente (\beginverse ...
\endverse, \beginchorus ... \endchorus). Não faz mal se não tiveres os acordes agora, podemos sempre adicionar depois. 
10. carregar no botão “Commit new file”
11. finalmente para propagar as actualizações do github para a base de dados do 
psalterio é preciso correr este script http://www.psalterio.net/workshop/tools/db/update_table_songs.php

done!

Se estiveres a corrigir várias musicas o melhor para ver os resultados quase imediatamente é abrir 3 “tabs” no browser: 

1. o link do github para editar a música online exemplo:
https://github.com/psalterio/repository/edit/master/songs/pt/hino_dos_rebentos_198.tex

2. o link para actualizar a base de dados
http://www.psalterio.net/workshop/tools/db/update_table_songs.php

3. o site para ver a música onde estou a trabalhar
exemplo: http://www.psalterio.net/198


## fazer correcções no teu PC (sem ser no github)
um pouco mais complicado que o mini tutorial mas é melhor a longo termo para quem faz muitas correcções: https://www.youtube.com/watch?v=Eu-_wI-p-Hs


Se tiveres questões envia-nos um email para psalterio.net@gmail.com ou adiciona um "issue" aqui no github https://github.com/psalterio/repository/issues


