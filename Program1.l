%option noyywrap

%{
	#include<stdio.h>
	int counter=0;
%}

digit[0-9]
letter[a-zA-Z]

%%
{letter}+			counter++;
{digit}+			counter++;
{letter}({digit}|{letter})*	counter++;
{digit}({digit}|{letter})*	counter++;
"\n" {printf("No. of words are %d",counter); counter=0;}
%%

int main()
{
	yylex();
	return 0;
}