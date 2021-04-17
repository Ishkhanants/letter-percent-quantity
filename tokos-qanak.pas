type vector = array[1..100] of integer;
var  t:string; i,p,k,g,n:integer; x:vector;

begin
write('Text:'); readln(t);
 p:=0; g:=100;
 for i:=1 to length(t) do
  if (ord(t[i])>=97) and (ord(t[i])<=122) then
 begin 
 n:=ord(t[i])-32;
 x[n]:=x[n]+1 
 end 
 else
  if (ord(t[i])>=65) and (ord(t[i])<=90) then
  begin 
  n:=ord(t[i]);
  x[n]:=x[n]+1 
  end
  else 
  if t[i]=' ' then 
 continue;
 for i:=65 to 90 do
  if x[i]<>0 then
  begin
   p:=p+x[i];
   write(char(i),':',x[i],' ')
  end;
 readln;
for i:=65 to 90 do
  if x[i]<>0 then
  begin
   k:=(g div p)*x[i];
   write(char(i),'=',k,'%','  ');
   g:=g-(g div p)*x[i];
   p:=p-x[i]
  end;
 readln;
end.