
Program LlenadodeMatriz;

Uses 
Crt;

Var 
  Sentido: Char;
  i,j Numero, LimI_N, LimF_N, LimI_M, LimF_M, N, M: integer;
  Matriz: array [1..10 , 1..10] Of integer;

Begin
  //Inicializacion de las variables

  i := 0;
  j := 0;
  Numero := 1;

  //Validando los datos de entrada

  Repeat
    clrscr;
    Writeln (

'Ingrese el tamanio deseado de la matriz. Las filas o las columnas no pueden ser mayor de 10: '
    );
    Readln (N, M);
    If (N>10) Or (M>10) Then
      Writeln (

'La cantidad de filas o la cantidad de columnas excede el limite. Vuelva a intentarlo.'
      );
  Until (N <= 10) And (M <= 10);

  //Limpieza de la matriz

  For i:= 1 To N Do
    For j:= 1 To M Do
      Matriz [N,M] := 0;

  //Seleccion del sentido de llenado de la matriz

  Writeln ('Sentido de llenado de su matriz:');
  Writeln ('1. Sentido horario');
  Writeln ('2. Sentido anti horario');
  Readln (Sentido);

  Case Sentido Of 
    '1':
         Begin

           //Indicando cuales son los primeros limites o bordes de la matriz

           LimI_N := 1;
           LimF_N := N;
           LimI_M := 1;
           LimF_M := M;

           //Se inicia el proceso de llenado de la matriz, en sentido horario

           While (Numero <= N*M) Do
             Begin
               For i:= LimI_M To LimF_M Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [LimI_N, i] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimI_N := LimI_N + 1;

               For i:= LimI_N To LimF_N Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [i, LimF_M] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimF_M := LimF_M - 1;

               For i:= LimF_M Downto LimI_M Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [LimF_N, i] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimF_N := LimF_N-1;

               For i:= LimF_N Downto LimI_N Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [i, LimI_M] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimI_M := LimI_M +1;

             End;

           //Mostrando la matriz rellena

           clrscr;
           For i:= 1 To N Do
             Begin
               For j:= 1 To M Do
                 Write (Matriz [i,j], ' ');
               Writeln ();
             End;

         End;
    '2':
         Begin

           //Indicando cuales son los primeros limites o bordes de la matriz

           LimI_N := 1;
           LimF_N := N;
           LimI_M := M;
           LimF_M := 1;




         //Se inicia el proceso de llenado de la matriz, en sentido anti horario

           While (Numero <= N*M) Do
             Begin
               For i:= LimI_M Downto LimF_M Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [LimI_N, i] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimI_N := LimI_N + 1;
               For i:= LimI_N To LimF_N Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [i, LimF_M] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimF_M := LimF_M + 1;

               For i:= LimF_M To LimI_M Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [LimF_N, i] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimF_N := LimF_N-1;

               For i:= LimF_N Downto LimI_N Do
                 Begin
                   If (Numero <= N*M)Then
                     Begin
                       Matriz [i, LimI_M] := Numero;
                       Numero := Numero + 1;
                     End;
                 End;

               LimI_M := LimI_M -1;

             End;

           //Mostrando la matriz rellena

           clrscr;
           For i:= 1 To N Do
             Begin
               For j:= 1 To M Do
                 Write (Matriz [i,j], ' ');
               Writeln ();
             End;

         End;
  End;
  Readkey;
End.
