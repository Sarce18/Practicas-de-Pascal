
Program CalculodeEuler;

Uses 
Crt;

Var 
  Expo, Num, i, q: Integer;
  Euler, Num_Fact: Real;

Begin
  Num_Fact := 1;
  Euler := 1;
  expo;

  writeln ('Indique el valor al que quiere elevar la constante e: ');
  readln (Expo);
  Writeln (
'Indique el numero de veces que quiere repetir la secuencia (Mientras mas alto el numero, mas preciso es el calculo):'
  );
  Readln (Num);

  //Se inicia el ciclo para aproximar el valor de euler

  For q:=Num Downto 1   Do
    Begin
      Num_Fact := 1;
      //Se obtiene el factorial del numero correspondiente

      For i:= 1 To q Do
        Num_Fact := Num_Fact * i;

      Euler := Euler + ((exp(q*ln(expo)))/Num_Fact);
    End;

  writeln ('El valor de e^',expo, ' es:', Euler:0:9);
  readkey;


End.
