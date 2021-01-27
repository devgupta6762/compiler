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
<html>
    <head>
        <title>uNi-bOok</title>
        <link rel="stylesheet" type="text/css" href="style2.css">
    </head>
    <body>
        <header>
            <div class="main">
                <div class="logo"><img src="logo.jpeg"></div>
                <ul>
                    <li><a href="home.php">Home</a></li>
                    <li><a href="b.php">Books</a></li>
                    <li><a href="index.php">About us</a></li>
                    <li><a href="contact.php">Contact Us</a></li>
                    <li><a href="#">Feedback</a></li>
                </ul>
            </div>
            <div class="title">
                <h1>uNi-bOok</h1>
            </div>
            <div class="button">
                <a href="login.php" class="btn">Log in</a>
                <a href="signup.php" class="btn">Sign up</a>
            </div>
                
                    
        </header>
    </body>
</html>
