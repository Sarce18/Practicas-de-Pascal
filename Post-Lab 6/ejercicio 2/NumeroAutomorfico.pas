
Program NumeroAutomorfico;

Uses Crt, math;

Var 
  Numero, Potencia, resto: Integer;

  //Funcion para elevar un numero dado a una potencia dada

Function Elevar (N,P: integer): longint;
Begin

  elevar := N**P;

End;

//Funcion para obtener el resto

Function Resto_NE(NE, Divi: integer): integer;
Begin

  Resto_NE := NE Mod Divi;

End;

//Procedimiento para descomponer el numero base y llamar a las 2 funciones anteriores

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

  Rest := Resto_NE (Num_Elev, divisor);

End;

//Programa principal

Begin
  Writeln ('Ingrese el numero entero a elevar:');
  Readln (Numero);
  Writeln ('Ingrese la potencia (Mayor que cero) a la cual se elevara el numero:');
  Readln (Potencia);

  Descomposicion (Numero, Potencia, Resto);

  //Determinando si es automorfico o no

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
