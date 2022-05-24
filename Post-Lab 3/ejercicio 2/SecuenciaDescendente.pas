
Program SecuenciaDescendente;

Uses
Crt;

Var

  Num, Num_A, Num_B, Cont_Num: Integer;
  Corte: Boolean;

Begin

  Cont_Num := 0;
  Corte := true;
  Num_A := 99999;

  Writeln (
'Ingrese una secuencia de numeros enteros. Para finalizar la secuencia, ingrese un cero (0): '
  );

  Repeat
    Readln(Num);

    Cont_Num := Cont_Num + 1;

    If (Num_A <= Num) And (Corte =true) Then
      Begin
        Corte := false;
        Num_B := Num;
      End;

    If (Corte=true) Then
      Num_A := Num;
  Until (Num = 0);

  If (Corte = true) Then
    Writeln('Su lista de ', Cont_Num,' elementos es descendente.')
  Else
    Writeln('Su lista de ', Cont_Num,
            ' elementos NO es descendente, ya que aparece ', Num_A,
            ' seguido de ', Num_B,'.');

  Readkey;
End.
