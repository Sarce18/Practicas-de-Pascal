
Program Encriptacion;

Uses Crt;

Var 
  Palabra, Palabra_Encriptada: String [30];
  Codigo_ascii, i: Integer;
Begin
  i := 1;
  Writeln ('Ingrese una cadena de caracteres: ');
  Readln (Palabra);

  For i := 1 To length(Palabra) Do
    Begin
      Codigo_ascii := ord (Palabra[i]);
      Codigo_ascii := Codigo_ascii + 2;
      Palabra_Encriptada := Palabra_Encriptada + chr(Codigo_ascii);
    End;

  Writeln (Palabra_Encriptada);

  Readkey;

End.
