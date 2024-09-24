TSynDSTSyn   {first Identifier is considered to be the Class Name }
tk              {second Identifier is considered to be the Identifier Prefix }
IdentStart '_', 'a'..'z', 'A'..'Z':: '_', '0'..'9', 'a'..'z', 'A'..'Z'::

TOKENTYPES
Identifier
Comment Style=[fsItalic]|Foreground=clNavy
Space
String Foreground=clGreen
Key Background=clWhite|Foreground=clBlue|Style=[fsBold]
KTypes Background=clWhite|Foreground=clTeal|Style=[fsBold]
KSecondWord Background=clWhite|Foreground=clMaroon|Style=[fsBold]

KComparisons Background=clWhite|Foreground=clMaroon|Style=[fsBold]
KSpecial Background=clWhite|Foreground=clRed|Style=[fsBold]
Test Background=clSilver|Foreground=clBlue|Style=[fsUnderline, fsItalic]
|><|

KEYS
false             
var
set               
show
inc               
if_question       
incdate           
if                
dec
decdate           
execute           
else              
exit_question     
get
to                
then              
true              
concat
goto
padvar
break
padingwith
print
|><|

KEYS KTypes
byte
integer
word
real
string
datetime
boolean
bool
int
|><|

KEYS KSecondWord
output
fieldby
left
right
yes
no
long_date_format
long_time_format
time_separator
decimal_separator
date_separator
short_time_format
short_date_format
date_time            
vars              
varandvalue
varinput
year
month
day
hour
min
sec
|><|

KEYS KComparisons
<
<=
=
>=
>
<>
|><|

KEYS KSpecial
*
^
:
|><|

CHARS

'A'..'Z', 'a'..'z', '_':: Ident
BeginProc
  fTokenID := IdentKind(fLine + Run);
  inc(Run, fStringLen);
  while IsIdentChar(fLine[Run]) do
    Inc(Run);
EndProc

|><|

ENCLOSEDBY

Comment,BraceComment,{,},MultiLine
Comment,CStyleComment,/*,*/,MultiLine
String,String,","

|><|

SAMPLESOURCE
{ Sample source for the demo highlighter }

This highlighter will recognize the words Hello and
World as keywords. It will also highlight "Strings".

And a special keyword type: SynEdit

/* This style of comments is also highlighted */
var:string:new_serial_number:
var:integer:first_number:1
var:integer:second_number:1000
var:string:harmlessVar:1

^Тест за събиране на продобавяне на стойност към променлива
*5,label1
	set:var:new_serial_number:
	//Добавяне на префикс
	concat:varandvalue:new_serial_number:KAZ
	//Добавяне на първа част от номера
	concat:vars:new_serial_number:first_number
	//Добавяне на данни
	concat:varandvalue:new_serial_number:AH
	//Добавяне на втора част от номера
	concat:vars:new_serial_number:second_number
	//Добавяне на суфикс
	concat:varandvalue:new_serial_number:STAN
	//На това място можем например да изпратим команда за запис на сериен новер
	show:var:new_serial_number
	//В този случай демонстрираме безобидна команда
	execute:varinput:90:harmlessVar
	//calculations	
	inc:var:first_number:1
	dec:var:second_number:100
:label1

|><|


