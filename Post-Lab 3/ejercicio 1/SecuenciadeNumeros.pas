
Program SecuenciadeNumeros;

Uses 
Crt;

Var 
  Mayor, Menor, Cont_Uno, Num, Num_Perf, i, Salv_num, Prom_Parcial,
  Cont_PM, Salv_Menor: Integer;
  Prom_PM: Real;
Begin
  Mayor := 0;
  Menor := 99999;
  Cont_PM := 0;
  Prom_Parcial := 0;
  Salv_Menor := Menor;


  //Validando que la entrada sea un numero natural

  Repeat
    clrscr;
    Writeln ('Ingrese una secuencia de numeros naturales (Para finalizar la secuencia, debe ingresar un cero (0)) :');
    Readln (Num);

    If (Num < 0) Then
      Begin
        Writeln ('Usted ha ingresado un valor invalido.');
        Readkey;
      End;

  Until (Num >= 0);

  While (Num <> 0) Do
    Begin

      //Determinando si el numero ingresado es un numero perfecto

      Num_Perf := 0;

      For i:= 1 To (num - 1) Do
        Begin
          If (Num Mod i = 0) Then
            Num_Perf := Num_Perf + i;
        End;


      //Determinando los valores binarios del numero ingresado

      Cont_Uno := 0;
      Salv_num := num;
      Repeat
        If (Num Mod 2 <> 0) Then
          Cont_Uno := Cont_Uno + 1;

        Num := Num Div 2;
      Until (Num = 1) ;

      Cont_Uno := Cont_Uno + 1;

      If (Cont_Uno Mod 2 = 0) Or (Num_Perf = Salv_num)Then
        Begin
          Prom_Parcial := Prom_Parcial + Salv_num;
          Cont_PM := Cont_PM + 1;

          If (Salv_Num > Mayor) Then
            Mayor := Salv_num;
          If (Salv_Num < Menor) Then
            Menor := Salv_Num;
        End;

      Writeln ('Ingrese el siguiente numero (Recuerde que para finalizar la secuencia, ingrese un cero(0)):');
      Readln (Num);
    End;

  //Calculo del promedio de numeros perfectos y malvados de la secuencia

  If (Menor = Salv_Menor) Then
    Menor := 0;

  If (Cont_PM <> 0) Then
    Prom_PM := Prom_Parcial / Cont_PM;

  Writeln ('Numero mayor de la secuencia: ', Mayor);
  Writeln ('Numero menor de la secuencia: ', Menor);
  Writeln ('Promedio de los numeros perfectos y malvados de la secuencia: ',
           Prom_PM:0:2);

  Readkey;

End.
