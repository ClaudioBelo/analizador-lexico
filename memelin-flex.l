%{
    #include <string.h>
    int i = 0;
    int chars = 1;
    int lines = 1;
%}

digit[0-9]
text[a-zA-Z0-9 áÁàÀãÃâÂéÉèÈêÊÍíìÌóÓÒòÕõôÔÚúÙù]
id[a-zA-Z][a-zA-Z0-9]*
assignment[:][=]
whitespace[ ]


%%
[\n] { lines++; chars = 1; }


vamo" "que" "vamo                   {printf("<t_begin, %s>\n", yytext);chars += strlen(yytext);}
diga" "tchau" "lilica               {printf("<t_end, %s>\n", yytext);chars += strlen(yytext);}
fala" "um" "a" "pra" "tu" "ve       {printf("<t_print, %s>\n", yytext);chars += strlen(yytext);}
conta" "pro" "tio                   {printf("<t_scan, %s>\n", yytext);chars += strlen(yytext);}
textao                              {printf("<t_string, %s>\n", yytext);chars += strlen(yytext);}
biridin                             {printf("<t_int, %s>\n", yytext);chars += strlen(yytext);}
mai" "love                          {printf("<t_float, %s>\n", yytext);chars += strlen(yytext);}
que" "menino"?"                     {printf("<t_if, %s>\n", yytext);chars += strlen(yytext);}
isso" "menino                       {printf("<t_elseif, %s>\n", yytext);chars += strlen(yytext);}
esse" "menino" "e" "coisado         {printf("<t_else, %s>\n", yytext);chars += strlen(yytext);}
procurando" "a" "graca              {printf("<t_while, %s>\n", yytext);chars += strlen(yytext);}
achei" "vacilo                      {printf("<t_switch, %s>\n", yytext);chars += strlen(yytext);}
achei" "graca" "tambem              {printf("<t_default, %s>\n", yytext);chars += strlen(yytext);}
achei                               {printf("<t_case, %s>\n", yytext);chars += strlen(yytext);}
tururu                              {printf("<t_break, %s>\n", yytext);chars += strlen(yytext);}
prossiga                            {printf("<t_continue, %s>\n", yytext);chars += strlen(yytext);}
roda" "roda" "jequiti               {printf("<t_for, %s>\n", yytext);chars += strlen(yytext);}

[#][#]{text}*[#][#]                 {printf("<t_comment, ");i=2;while(i<strlen(yytext)-2){printf("%c", yytext[i]);if(yytext[i]=='\n'){lines++;chars=0;}chars++;i++;}printf(">");}

{id}                                {printf("<t_id, %s>\n", yytext);chars += strlen(yytext);}
"\""{text}*"\""                     {printf("<t_string, %s>\n", yytext);chars += strlen(yytext);}
{assignment}                        {printf("<t_assignment, %s>\n", yytext);chars += strlen(yytext);}
{digit}+.?({digit}*)?               {printf("<t_number, %s>\n", yytext);chars += strlen(yytext);}
":"                                 {printf("<t_start_case, %s>\n", yytext);chars += strlen(yytext);}
";"                                 {printf("<t_end_command, %s>\n", yytext);chars += strlen(yytext);}
"("                                 {printf("<t_start_expression, %s>\n", yytext);chars += strlen(yytext);}
")"                                 {printf("<t_end_expression, %s>\n", yytext);chars += strlen(yytext);}
"{"                                 {printf("<t_start_block, %s>\n", yytext);chars += strlen(yytext);}
"}"                                 {printf("<t_end_block, %s>\n", yytext);chars += strlen(yytext);}
"+"                                 {printf("<t_plus, %s>\n", yytext);chars += strlen(yytext);}
"-"                                 {printf("<t_minus, %s>\n", yytext);chars += strlen(yytext);}
"*"                                 {printf("<t_multiply, %s>\n", yytext);chars += strlen(yytext);}
"/"                                 {printf("<t_share, %s>\n", yytext);chars += strlen(yytext);}
"!"                                 {printf("<t_not, %s>\n", yytext);chars += strlen(yytext);}
"&&"                                {printf("<t_and, %s>\n", yytext);chars += strlen(yytext);}
"||"                                {printf("<t_or, %s>\n", yytext);chars += strlen(yytext);}
"=="                                {printf("<t_equal, %s>\n", yytext);chars += strlen(yytext);}
"!="                                {printf("<t_not_equal, %s>\n", yytext);chars += strlen(yytext);}
"<"                                 {printf("<t_less, %s>\n", yytext);chars += strlen(yytext);}
">"                                 {printf("<t_greater, %s>\n", yytext);chars += strlen(yytext);}
"<="                                {printf("<t_less_equal, %s>\n", yytext);chars += strlen(yytext);}
">="                                {printf("<t_greater_equal, %s>\n", yytext);chars += strlen(yytext);}
","                                 {printf("<t_comma, %s>\n", yytext);chars += strlen(yytext);}
[ \t\r]                             {chars += strlen(yytext);}
.                                   {printf("Aiaiai ein, tem coisa ai na linha %d e coluna %d.\n", lines, chars);}


%%


int yywrap();


int main(int argc, char **argv){
  yylex();
  return 0;
}

int yywrap(){
    return 1;
}