
Program NumeroAutomorfico;

Uses Crt, math;

Var 
  Numero, Potencia, resto: Integer;

Function Elevar (N,P: integer): integer;
Begin

  elevar := N**P;

End;

Procedure Descomposicion(Num, Pot: integer; Var Rest: integer);

Var 
  Num_Elev, divisor, Cant_Dig: Integer;
Begin
  Cant_Dig := 1;
  Num_Elev := Elevar (Num, Pot);


  While (Num Div 10 <> 0) Do
    Begin
      Cant_Dig := Cant_Dig + 1;
      Num := Num Div 10;
    End;

  divisor := 10**Cant_Dig;

  Rest := Num_Elev Mod divisor;

End;

Begin
  Writeln ('Ingrese el numero entero a elevar:');
  Readln (Numero);
  Writeln ('Ingrese la potencia (Mayor que cero) a la cual se elevara el numero:');
  Readln (Potencia);

  Descomposicion (Numero, Potencia, Resto);

  If (Resto = numero) Then
    Begin
      Writeln (Numero,' elevado a la ', Potencia, ' es: ', Elevar (Numero,Potencia));
      Writeln ('Su numero es automorfico');
      Readkey;
    End
  Else
    Begin
      Writeln (Numero,' elevado a la ', Potencia, ' es: ', Elevar (Numero,Potencia));
      Writeln ('Su numero no es automorfico');
      Readkey;
    End;

End.
