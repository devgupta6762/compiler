%option noyywrap
%{
	#include<stdio.h>
	int counter=0;
%}
letter[aeiou AEIOU]
%%
{letter}	counter++;
%%
int main()
{
	yylex();
	if(counter>0)
		printf("vowel");
	else
		printf("not vowel ");
	return 0;
}