
Program DatosdeCiudadanos;

Uses Crt;

Type 

  //Registro si el ciudadano es hombre

  DatosH = Record
    PiesP, SM_Actual, SM_Retirado: char;
  End;

  //Registro de los ciudadanos

  Datos = Record
    Cedula: string [8];
    NyA: string [20];
    Edad: integer;
    sexo, EDO_Civil, Nacionalidad: char;
    hombre: DatosH;
  End;

  //Registro de los que pueden prestar servicio militar

  ServicioM = Record
    Nombre: string [20];
    CedulaSM: string [8];
  End;

Var 
  Ciudadanos: array [1..5] Of datos;
  ServM: array [1..5] Of ServicioM;
  i, cont: integer;

Begin
  cont := 1;

  For i:= 1 To 5 Do
    With Ciudadanos[i] Do
      Begin

        //Ingresando los datos del ciudadano

        clrscr;
        write ('ingrese el nombre del ciudadano nro ', i, ': ');
        readln (NyA);
        write ('Ingrese la cedula del ciudadano nro ', i, ': ');
        readln (Cedula);
        write ('Ingrese la edad del ciudadano nro ', i, ': ');
        readln (Edad);
        write ('Ingrese el sexo del ciudadano nro ', i, '(M: Masculino ; F: femenino): ');
        readln (sexo);
        write ('Ingrese el estado civil del ciudadano nro ', i, '(S: Soltero(a) ; C: Casado(a) ; V: Viudo(a)): ');
        readln (EDO_Civil);
        write ('Ingrese la nacionalidad del ciudadano nro ', i, ' (V: Venezolano(a) ; E: Extranjero(a)): ');
        readln (Nacionalidad);

        //si el ciudadano es venezolano se verifica si puede o no prestar servicio militrar

        If (Nacionalidad = 'V') Or (Nacionalidad = 'v') Then
          If (Edad >= 18) And (Edad <= 30) Then
            Begin

              //si el ciudadano es hombre se realizan preguntas adicionales

              If (Sexo = 'M') Or (Sexo = 'm') Then
                Begin
                  write ('El ciudadano nro ', i, ' posee pies planos (1: Si ; 2: No): ');
                  readln (Hombre.PiesP);
                  write ('El ciudadano nro ', i, ' ha prestado servicio militar (1: Si ; 2: No): ');
                  readln (Hombre.SM_Retirado);
                  write ('El ciudadano nro ', i, ' esta prestando servicio militar actualmente (1: Si ; 2: No): ');
                  readln (Hombre.SM_Actual);
                End;

              //si el ciudadano puede prestar servicio militar, se guardan los datos

              With ServM [cont] Do
                Begin
                  If (Sexo = 'F') Or (Sexo = 'f') Then
                    Begin
                      Nombre := NYA;
                      CedulaSM := Cedula;
                      Cont := Cont + 1;
                    End
                  Else
                    If (Sexo = 'M') Or (Sexo = 'm') Then
                      If (Hombre.PiesP = '2') And (Hombre.SM_Retirado = '2') And (Hombre.SM_Actual = '2') Then
                        Begin
                          Nombre := NYA;
                          CedulaSM := Cedula;
                          Cont := Cont + 1;
                        End;
                End;
            End;
      End;

  //salida

  clrscr;
  writeln ('Ciudadanos que pueden prestar servicio militar:');
  For i:= 1 To cont - 1 Do
    With ServM [i] Do
      Begin
        writeln ('Nombre: ', Nombre, ' Cedula: ', CedulaSM);
      End;

  readkey;

End.
