program CalculodeEuler;
Uses
    Crt;
var
  Expo, Num, i, q: Integer;
  Euler, Num_Fact: Real;

begin
  Num_Fact:= 1;
  Euler:= 1;

  writeln ('Indique el valor al que quiere elevar la constante e: ');
  readln (Expo);
  Writeln ('Indique el numero de veces que quiere repetir la secuencia (Mientras mas alto el numero, mas preciso es el calculo):');
  Readln (Num);

  For q:=Num Downto 1   do
      Begin
           Num_Fact:= 1;
           For i:= 1 to q do
               Num_Fact:= Num_Fact * i;

            Euler:= Euler + ((exp(q*ln(expo)))/Num_Fact);
      end;

  writeln ('El valor de e^',expo, ' es:', Euler:0:9);
  readkey;


end.

