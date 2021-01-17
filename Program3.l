%option noyywrap
%{
	#include<stdio.h>
	int counter=0,line=0;
%}

%%
.	counter++;
\n	line++;
%%
int main()
{
	yylex();
	printf("No. of character are %d | no. of lines are %d",counter,line);
	return 0;
}