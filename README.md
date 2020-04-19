# Analisador lexico - MemeLin
Analisador realizado como forma estudantil para a disciplina de compiladores.

Informações referentes a gramatica definida,[DEFINIÇÕES](https://github.com/ClaudioBelo/analizador-lexico/blob/master/definicoes.md)

## FlameWorks
Com o intuido de apenas de realizar a parte lexica do compilador, foi utilizado a ferramenta [FLEX](https://github.com/westes/flex/), também conhecido como fast lexical analyse, um gerador de analisadores lexicais, aonde se permite a leitura de um input stream e executar ações quando esta stream correspondem aos tokens definidos pelo programador.

## E que comece os MEMES

Clone o repositório 

Para utilização no Windowns siga os passos abaixo:

Sera necessario a utilização de um compilador em C como por exemplo o [CodeBlocks](https://sourceforge.net/projects/codeblocks/files/Binaries/20.03/Windows/codeblocks-20.03mingw-nosetup.zip/download)

Logo apos a instalação do compilador realize o download do [FLEX GnuWin32](https://sourceforge.net/projects/gnuwin32/files/flex/2.5.4a-1/flex-2.5.4a-1.exe/download)

### Path setup CODEBLOCKS

Apos a instalação entre na pasta aonde foi instalado o CodeBlocks --> MinGW --> bin , e copie este diretorio.

Abra o painel de controle --> sistema e segurança --> sistema --> configurações avançadas do sistema.

Clique em Variaveis de ambiente...

Em variáveis do sistema encontre a variável Path, selecione a mesma e clique em editar.

Clique em novo e copie o diretorio.

### Path setup GnuWin32

 Entre na pasta aonde foi instalado o GnuWin32 --> bin , e copie este diretorio.
 
 Realize os mesmo passos do Path setup CODEBLOCKS apartir da abertura do painel de controle.
 
 
 ### Utilizando a MemeLin
 
 Após a realização de todos os passos anteriores navegue ate a pasta aonde se encontra o analisador e execute o flex.
>flex memelin-flex.l
 
 aonde ira geral o arquvi lex.yy.c e utilize o compilador do c.
 >gcc lex.yy.c
 
 assim gerando o executavel a aonde basta abri-lo e entra na onda dos memes.
 

