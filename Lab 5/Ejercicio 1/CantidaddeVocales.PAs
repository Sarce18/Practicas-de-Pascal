
Program CantidaddeVocales;

Uses Crt;

Var 
  Oracion: String [50];
  Vocales: Array [1..5] Of integer;
  Vocales2: Array [1..5] Of char = ('a', 'e', 'i', 'o', 'u');
  i,j: integer;

Begin
  For i:= 1 To 5 Do
    Vocales[i] := 0;

  Write ('Ingrese una oracion: ');
  Readln (oracion);

  For i:= 1 To length (Oracion) Do
    Begin
      If (Oracion[i] In ['a', 'A']) Then
        Vocales [1] := Vocales[1]+ 1;

      If (Oracion[i] In ['e', 'E']) Then
        Vocales [2] := Vocales[2]+ 1;

      If (Oracion[i] In ['i', 'I']) Then
        Vocales [3] := Vocales[3]+ 1;

      If (Oracion[i] In ['o', 'O']) Then
        Vocales [4] := Vocales[4]+ 1;

      If (Oracion[i] In ['u', 'U']) Then
        Vocales [5] := Vocales[5]+ 1;
    End;

  For i:= 1 To 5 Do
    Begin
      Write (Vocales2[i], '. ', Vocales[i]);
      For j:= 1 To Vocales[i] Do
        Write(' *');
      Writeln ();
    End;

  Readkey;

End.
