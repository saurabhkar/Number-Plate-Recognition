%CREATE TEMPLATES 
%Alphabets

A=imread('A.bmp'); 
B=imread('B.bmp');C=imread('C.bmp');
D=imread('D.bmp');E=imread('E.bmp');F=imread('F.bmp');
G=imread('G.bmp');H=imread('H.bmp');I=imread('I.bmp');
J=imread('J.bmp');K=imread('K.bmp');L=imread('L.bmp');
M=imread('M.bmp');N=imread('N.bmp');O=imread('O.bmp');
P=imread('P.bmp');Q=imread('Q.bmp');R=imread('R.bmp');
S=imread('S.bmp');T=imread('T.bmp');U=imread('U.bmp');
V=imread('V.bmp');W=imread('W.bmp');X=imread('X.bmp');
Y=imread('Y.bmp');Z=imread('Z.bmp');

%Natural Numbers
one=imread('1.bmp');two=imread('2.bmp');
three=imread('3.bmp');four=imread('4.bmp');
five=imread('5.bmp'); six=imread('6.bmp');
seven=imread('7.bmp');eight=imread('8.bmp');
nine=imread('9.bmp'); zero=imread('0.bmp');

%Creating Array for Alphabets
letter=[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
%Creating Array for Numbers
number=[one two three four five six seven eight nine zero];
NewTemplates=[letter number];
%save ('NewTemplates','NewTemplates')
figure , imshow(zero);