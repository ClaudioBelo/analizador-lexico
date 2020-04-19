


## Tabela de tokens:
| Expressões            | Token              |
|-----------------------|--------------------|
| textao("grandao")     | t_string           |
| vamo que vamo         | t_begin            |
| diga tchau lilica     | t_end              |
| fala um a pra tu ve   | t_print            |
| conta pro tio         | t_scan             |
| biridin               | t_int              |
| mai love              | t_float            |
| que menino?           | t_if               |
| isso menino           | t_elseif           |
| esse menino e coisado | t_else             |
| procurando a graca    | t_while            |
| achei vacilo          | t_switch           |
| achei graca tambem    | t_deafault         |
| achei                 | t_case             |
| tururu                | t_break            |
| prossiga              | t_continue         |
| roda roda jequiti     | t_for              |
| identificadores       | t_id               |
| ## ##                 | t_comment          |
| operadores            | t_operators        |
| :=                    | t_assignment       |
| 0-9                   | t_number           |
| ;                     | t_end_command      |
| (                     | t_start_expression |
| )                     | t_end_expression   |
| {                     | t_start_block      |
| }                     | t_end_block        |
| :                     | t_start_case       |


Inicio do codigo:
>vamo que vamo

Encerramento do código:
>diga tchau lilica

Exemplo:
```
vamo que vamo
/*  insira seu código aqui */;
Diga tchau lilica
```

Printar na tela:
>fala um a pra tu ve ve("a a")

for:
>roda roda jequeti

If:
> que menino?

Elseif:
>isso menino

Else:
>esse menino e coisado

While:
>procurando a graca

Continue:
>prossiga

Switch:
>achei vacilo

Case:
>achei

Default:
>achei graca tambem

break:
>tururu

Tipos de Dados:
>textao (string)
>biridin (int)
>mai love(float)

Comentarios:
> /* insira seu comentario aqui */

Operadores:
>" + " : Operador de soma

>" - " : Operador de subtração

>" * " : Operador de multiplicação

>" / " : Operador de divisão

Identificadores
>x,var1,var2, ...

Simbologia:
>“ ( “ : inicia parâmetro	

>“ ) ” : fecha parâmetro

>“ { “ : inicio método

>“ } ” : fim do método 

>“ ; ” : fim da linha

>“ : ” : pontuação

Números:
>0-9


## Exemplo do analisador léxico

Codigo:
```
vamo que vamo
	mai love x1;
	conta pro tio(x1);

	mai love resultado := x1 * 2;
	fala um a pra tu ve("O dobro do numero é ");
	fala um a pra tu ve(x1);

```

Saida:



