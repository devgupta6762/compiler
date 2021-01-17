%option noyywrap
%{
	#include<stdio.h>
	int counter=0;
%}
letter[a-zA-Z]
digit[0-9]
%%
{letter}({digit}|{letter})*	counter++;
{digit}({digit}|{letter})*
%%
int main()
{
	yylex();
	printf("No. of identifers are %d",counter);
	return 0;
}