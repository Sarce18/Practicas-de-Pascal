
Program EncuestaDisquera;

Uses Crt;

Const 
  n = 10;
  M = 5;

Type 

  //Registro para los nombres y apellidos de los encuestados

  NombreCompleto = Record
    PyS_Nombre, PyS_Apellido: string [30];
  End;

  //Registro de datos de los encuestados

  Datos = Record
    Cedula: string [8];
    Nombre: NombreCompleto;
    sexo: char;
    Edad: Integer;
    Canciones_Fav: array [1..5] Of integer;
  End;



Var 
  Canciones, puntos, total: array [1..n] Of integer;
  i, j, k, cont, aux, PTS, acum, Cont_Edades: integer;
  Encuestados : Array [1..M] Of Datos;
  Prom_Edades: Real;
Begin

  //Inicializando las variables y arreglos

  acum := 0;
  Cont_Edades := 0;

  For i:= 1 To n Do
    Begin
      Canciones[i] := 0;
      Puntos[i] := 0;
      Total[i] := 0;
    End;

  //Datos de entrada

  For i:=1 To M Do
    Begin
      With encuestados[i] Do
        Begin
          clrscr;
          writeln ('Encuestado Nro ', i);
          Write ('Ingrese su primer y segundo Nombre: ');
          Readln (Nombre.PyS_Nombre);
          write ('Ingrese su primer y segundo apellido: ');
          Readln (Nombre.PyS_Apellido);
          Write ('Ingrese su Cedula: ');
          Readln (Cedula);
          Write ('Ingrese su edad: ');
          Readln (Edad);
          write ('Ingrese su sexo (M: Masculino ; F: Femenino): ');
          readln (Sexo);
          Writeln ('Ingrese sus 5 canciones favoritas (1-10) en orden de preferencia:');
          For j:= 1 To 5 Do
            Begin
              Write ('Cancion Nro ', j, ' (1-10): ');
              Repeat
                readln (Canciones_Fav[j]);

                If (Canciones_Fav[j] > 10) Then
                  Writeln ('Ingrese una cancion valida.');

              Until (Canciones_Fav[j] <= 10);
            End;
        End;
    End;

  //Seleccionando las canciones de las personas mujeres encuestadas y asignandoles puntajes

  For i:= 1 To M Do
    Begin
      PTS := 5;
      With Encuestados [i] Do
        If (Sexo = 'F') Or (Sexo = 'f') Then
          For j:= 1 To 5 Do
            Begin
              For k:= 1 To n Do
                If Canciones_Fav[j] = k Then
                  Canciones[k] := canciones[k] + PTS;

              PTS := PTS - 1;

            End;
    End;

  //Ordenando lois puntajes de mayor a menor

  If (Canciones [1] <> 0) Then
    Begin
      For i:= 1 To n Do
        Puntos[i] := Canciones[i];

      For i:= 1 To n Do
        For j:= i+1 To n Do
          If (Puntos[j] > puntos[i]) Then
            Begin
              aux := Puntos[i];
              Puntos[i] := puntos [j];
              Puntos[j] := aux;
            End;

      //ordenando las canciones

      For i:= 1 To n Do
        Begin
          For j:= 1 To n Do
            If (Puntos[i] = Canciones[j]) And (Puntos[i-1] <> j) Then
              Total[i] := j;
        End;
    End;

  //calculando el promedio 

  For i:= 1 To m Do
    With Encuestados[i] Do
      Begin
        cont := 0;

        For j:= 1 To 5 Do
          If (Canciones_Fav[j] Mod 2 <> 0) Then
            cont := Cont+1;
        If (Cont = 5) Then
          Begin
            Cont_Edades := Cont_Edades +1;
            Acum := Acum+ Edad;
          End;
      End;

  If (Cont_Edades > 0) Then
    Prom_Edades := Acum/Cont_Edades;

  //salida

  clrscr;
  writeln ('5 canciones con mayor preferencia por las mujeres: ');

  If (Total[1] <> 0) Then
    For i:= 1 To 5 Do
      writeln ('Cancion ', i, ': ', Total[i])
      Else
        Writeln ('No hubieron mujeres encuestadas.');
  writeln ();
  Writeln ('Promedio de la edad de las personas que prefieren solo las canciones identificadas con números impares: ',
           Prom_Edades:0:2);

  readkey;


End.
