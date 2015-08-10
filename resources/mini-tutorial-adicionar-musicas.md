## Mini Tutorial para adicionar musicas no GitHub

1. verifica qual é o id da nova música através deste link:  http://www.psalterio.net/workshop/tools/db/check_new_id.php
2. vai à pasta das músicas em português 
https://github.com/psalterio/repository/tree/master/songs/pt
3. no topo da página onde diz "repository/songs/pt/" carrega no " + " que está ao lado para adicionar um novo ficheiro.
4. escreve o nome do ficheiro. Exemplo "hino_dos_rebentos_198.tex"
5. copia o template. abre uma nova janela no teu browser e copia o conteúdo do template simples que está em 
https://github.com/psalterio/repository/blob/master/songs/template_simple.tex
6. onde diz "Title here" por o titulo da musica
7. adiciona o novo id = {198}
8. adiciona o nome do autor by = {Autor da musica}, # se nao souberes deixa em branco
9. depois só falta adicionar a letra e os acordes em cada secção correspondente (\beginverse ...
\endverse, \beginchorus ... \endchorus). Não faz mal se não tiveres os acordes agora, podemos sempre adicionar depois. 
10. carregar no botão “Commit new file”
11. finalmente para propagar as actualizações do github para a base de dados do 
psalterio é preciso correr este script http://www.psalterio.net/workshop/tools/db/update_table_songs.php

done!

Se estiveres a corrigir várias musicas o melhor para ver os resultados quase imediatamente é abrir 3 “tabs” no browser: 

1. o github para editar a música online exemplo:
https://github.com/psalterio/repository/edit/master/songs/pt/hino_dos_rebentos_198.tex

2. o link para actualizar a base de dados
http://www.psalterio.net/workshop/tools/db/update_table_songs.php

3. o site para ver a música onde estou a trabalhar
exemplo: http://www.psalterio.net/198


Se tiveres questões envia-nos um email para psalterio.net@gmail.com ou adiciona um "issue" aqui no github
