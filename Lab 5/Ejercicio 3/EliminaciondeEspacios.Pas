
Program EliminaciondeEspacios;

Uses Crt;

Var 
  Oracion, Oracion_Nueva: String [50];
  Palabra: String [15];
  i: Integer;

Begin
  i := 0;
  Write ('Ingrese una oracion: ');
  Readln (Oracion);

  For i := 1 To length(Oracion) Do
    If (Oracion[i] <> #32) Then
      Oracion_Nueva := Oracion_Nueva + Oracion[i];

  Writeln (Oracion_Nueva);
  Readkey;

End.
