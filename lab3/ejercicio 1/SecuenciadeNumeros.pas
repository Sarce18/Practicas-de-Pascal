
Program SecuenciadeNumeros;

Uses 
Crt;

Var 
  NEP, VN, Primos, i, j, Cont_Num, Cont_P, Cont_I, Mayor, Menor, Cont_IVN:


                                                                         Integer
  ;
  Porct_NP, Porct_NI: Real;

Begin
  Cont_I := 0;
  Cont_Num := 0;
  Cont_P := 0;
  i := 0;
  Mayor := 0;
  Menor := 30000;
  Primos := 0;
  Cont_IVN := 0;
  Repeat
    Clrscr;
    Writeln (


           'Ingrese un numero entero positivo cualquiera (Excepto el cero (0)):'
    );
    Readln (VN);

    If (VN = 0) Then

      //Validando el valor de entrada

      Begin
        Writeln ('Usted ha ingresado un valor ivalido. Vuelva a intentarlo');
        Readkey;
      End;
  Until (VN <> 0);

  Repeat
    clrscr;
    Writeln (


'Ahora, ingrese una secuencia de numeros enteros positivos (Para finalizar la secuencia, ingrese un cero (0)):'
    );
    Readln (NEP);

    //Validando el valor de entrada

    If (NEP < 0) Then
      Begin
        Writeln ('Usted ha ingresado un valor ivalido. Vuelva a intentarlo');
        Readkey;
      End;
  Until (NEP >= 0);

  // Iniciando el ciclo para realizar los calculos correspondientes

  While (NEP <> 0) Do
    Begin
      Cont_Num := Cont_Num + 1;

      //Identificando si el numero es par o impar

      If (NEP Mod 2 = 0) Then
        Cont_P := Cont_P + 1
      Else
        Cont_I := Cont_I + 1;

      //Verificando si el numero es igual valor VN introducido por el usuario

      If (NEP = VN) Then
        Cont_IVN := Cont_IVN + 1;

      //Verificando cual es el numero mayor y menor de la secuencia

      If (NEP > Mayor) Then
        Mayor := NEP;

      If (NEP < Menor) Then
        Menor := NEP;

      j := 0;

      //contando los numeros primos de la secuencia

      For i:= 1 To NEP Do
        Begin
          If (NEP Mod i = 0)Then
            j := j + 1;
        End;

      If (j = 2) Then
        Primos := Primos + 1;

      Writeln (


'Ingrese el siguiente numero (Recuerde que para finalizar la secuencia, debe ingresar el cero (0)):'
      );
      Readln (NEP);
    End;

  //Calculo del porcentaje de numeros pares e impares de la secuencia

  Porct_NP := (Cont_P * 100)/Cont_Num;
  Porct_NI := (Cont_I * 100)/Cont_Num;

  Writeln ('Porcentaje de numeros pares: ', Porct_NP:0:2, ' %');
  Writeln ('Porcentaje de numeros impares: ', Porct_NI:0:2, ' %');
  Writeln ('Cantidad de valores iguales a ', VN, ': ', Cont_IVN);
  Writeln ('Numero mayor de la secuencia: ', Mayor);
  Writeln ('Numero menor de la secuencia: ', Menor);
  Writeln ('Cantidad de numeros primos: ', Primos);

  Readkey;

End.
