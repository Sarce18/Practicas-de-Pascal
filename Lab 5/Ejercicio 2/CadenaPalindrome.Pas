
Program CadenaPalindrome;

Uses Crt;

Var 
  Oracion, Oracion_Nueva, Oracion_Inversa: String [50];
  Rec_Derecha, Rec_Izquierda, i: integer;

Begin
  i := 0;
  Write ('Ingrese una oracion: ');
  Readln (Oracion);

  For i := 1 To length(Oracion) Do
    If (Oracion[i] <> ' ') Then
      Oracion_Nueva := Oracion_Nueva + Oracion[i];

  Rec_Izquierda := 1;
  Rec_Derecha := length(Oracion_Nueva);

  For i:= length(Oracion_Nueva) Downto 1 Do

    Oracion_Inversa := Oracion_Inversa + Oracion_Nueva[i];

  If (Oracion_Inversa = Oracion_Nueva) Then
    Writeln ('Su oracion es palindrome.')
  Else
    Writeln ('Su oracion no es palindrome.');



  Readkey;

End.
