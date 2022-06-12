
Program CuadradoMagico;

Uses Crt;

Var 
  i, j, N, Cont_Num, Salvi, Salvj: Integer;
  Matriz: Array [1..9,1..9] Of integer;

Begin

  //Inicializando parte de las variables

  N := 0;
  Cont_Num := 1;

  //Limpieza de la matriz

  For i := 1 To N Do
    For j := 1 To N Do
      Matriz [i,j] := 0;

  //Validando los datos de entrada;

  Repeat
    Writeln (
'Ingrese el tamanio deseado para su cuadrado magico (La cantidad que ingrese no debe ser mayor a 10 y debe ser un numero impar): '
    );
    Readln (N);

    If (N>9) Or (N Mod 2 = 0) Then
      Writeln ('Ingreso un valor invalido. Vuelva a intentar.');

  Until (N<=9) And (N Mod 2 <> 0);

  //Inicializando las variables restantes

  i := 1;
  j := N Div 2 + 1;
  Salvi := 0;
  Salvj := 0;


  While (Cont_Num <=N*N) Do

    //Verificando si las variables excede los limites de la matriz

    Begin
      If (i = 0) Then
        i := N;
      If (j > N) Then
        j := 1;

      //Se comienza el llenado de la matriz






//Si en la casilla actual se encuentra un cero, entonces se escribira el numero correspondiente de la secuencia en dicha casilla

      If (Matriz [i,j] = 0) Then
        Begin
          Matriz[i,j] := Cont_Num;

          //Se guarda la posicion en donde se encuentra el puntero actualmente

          Salvi := i;
          Salvj := j;
          Cont_Num := Cont_Num + 1;
        End
      Else




//Si en la casilla actual se encuentra un numero diferente de cero, el numero correspondiente de la secuencia, se escribira debajo del ultimo numero escrito

        If (Matriz[i,j] <> 0) Then
          Begin

            //Ubicamos el puntero en la casilla debajo del ultimo numero escrito

            i := Salvi + 1;
            j := Salvj;
            Matriz [i,j] := Cont_Num;

            //Se guarda la posicion en donde se encuentra el puntero actualmente

            Salvi := i;
            Salvj := j;
            Cont_Num := Cont_Num + 1;
          End;

      i := i - 1;
      j := j + 1;

    End;

  //Se muestra la matriz rellena

  For i := 1 To N Do
    Begin
      For j := 1 To N Do
        Write (Matriz[i,j], '  ');
      Writeln ();
    End;

  Readkey;

End.
