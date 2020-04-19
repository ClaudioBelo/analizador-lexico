digit[0-9]
textao[a-zA-Z áÁàÀãÃâÂéÉèÈêÊÍíìÌóÓÒòÕõôÔÚúÙù]
id[a-zA-Z][a-zA-Z0-9]*
operators[-+*/]
assignment[:][=]
whitespace[ ]


%%
vamo" "que" "vamo                   {printf("<t_begin, %s>\n", yytext);}
diga" "tchau" "lilica               {printf("<t_end, %s>\n", yytext);}
fala" "um" "a" "pra" "tu" "ve       {printf("<t_print, %s>\n", yytext);}
conta" "pro" "tio                   {printf("<t_scan, %s>\n", yytext);}
textao                              {printf("<t_string, %s>\n", yytext);}
biridin                             {printf("<t_int, %s>\n", yytext);}
mai" "love                          {printf("<t_float, %s>\n", yytext);}
que" "menino"?"                     {printf("<t_if, %s>\n", yytext);}
isso" "menino                       {printf("<t_elseif, %s>\n", yytext);}
esse" "menino" "e" "coisado         {printf("<t_else, %s>\n", yytext);}
procurando" "a" "graca              {printf("<t_while, %s>\n", yytext);}
achei" "vacilo                      {printf("<t_switch, %s>\n", yytext);}
achei" "graca" "tambem              {printf("<t_default, %s>\n", yytext);}
achei                               {printf("<t_case, %s>\n", yytext);}
tururu                              {printf("<t_break, %s>\n", yytext);}
prossiga                            {printf("<t_continue, %s>\n", yytext);}
roda" "roda" "jequiti               {printf("<t_for, %s>\n", yytext);}
{id}                                {printf("<t_id, %s>\n", yytext);}
"\""{textao}*"\""                   {printf("<t_string, %s>\n", yytext);}
"##"{textao}*"##"                   {printf("<t_comment, %s>\n", yytext);}
{operators}                         {printf("<t_operators, %s>\n", yytext);}
{assignment}                        {printf("<t_assignment, %s>\n", yytext);}
{digit}                             {printf("<t_number, %s>\n", yytext);}
":"                                 {printf("<t_start_case, %s>\n", yytext);}
";"                                 {printf("<t_end_command, %s>\n", yytext);}
"("                                 {printf("<t_start_expression, %s>\n", yytext);}
")"                                 {printf("<t_end_expression, %s>\n", yytext);}
"{"                                 {printf("<t_start_block, %s>\n", yytext);}
"}"                                 {printf("<t_end_block, %s>\n", yytext);}
{whitespace}                        {printf("");}



%%


int yywrap();

int main(void){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}