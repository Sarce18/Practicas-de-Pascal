
Program RegistroCiudadanos;

Uses Crt, DOS, sysutils;

Type 

  Fecha = Record
    Dia, Mes, anio: integer;
  End;

  datosC = Record
    Cedula: string [8];
    Nombre, Direccion, Ciudad: string [25];
    FN: Fecha;
    Sexo: char;
  End;

Var 
  Registro: file Of datosC;
  Reporte: text;
  Opcion, Opcion_Menu, Anio_Min, Anio_Max: integer;
  datos: datosC;
  FechayHora: longint;
  Datos_Fecha: Datetime;
  Letra: Char;

Begin

  //Inicializacion de los archivos
  Assign (Registro, 'Registro.TXT');
  Assign (Reporte, 'Reporte.TXT');

  If Not (Fileexists ('Registro.TXT')) Then
    Rewrite (Registro);

  //Menu

  Repeat
    clrscr;
    Writeln ('Seleccione una opcion: ');
    Writeln ('1. Ingresar datos de ciudadanos.');
    Writeln ('2. Buscar nombres que comiencen con una letra y generar reporte.');
    Writeln ('3. Salir.');
    Readln (Opcion_Menu);

    Case Opcion_Menu Of 

      //Opcion para registrar los datos de los ciudadanos

      1:
         Begin
           reset (registro);
           seek (Registro, filesize(Registro));
           With datos Do
             Repeat
               clrscr;
               Write ('Ingrese el nombre del ciudadano: ');
               Readln (Nombre);
               Write ('Ingrese la cedula del ciudadano: ');
               Readln (Cedula);
               Writeln ('Ingrese la fecha de nacimiento del ciudadano (aaaa/mm/dd): ');
               Readln (FN.Anio, FN.Mes, Fn.Dia);
               Write ('Ingrese el sexo del ciudadano (M: Masculino ; F: Femenino): ');
               Readln (Sexo);
               Write ('Ingrese la direccion de vivienda del ciudadano: ');
               Readln (Direccion);
               Write ('Ingrese la ciudad de residencia del ciudadano: ');
               Readln (Ciudad);

               //Guardando los datos en el archivo

               Write (Registro, datos);
               write ();
               Write ('Desea ingresar otro ciudadano (1. Si ; 2. No): ');
               Readln (Opcion);

             Until (Opcion = 2);
           Close (Registro);
         End;

      //Opcion para generar el reporte 

      2:
         Begin
           Rewrite (Reporte);
           getftime (Reporte, FechayHora);
           unpacktime (FechayHora, datos_Fecha);

           Writeln (Reporte, '******** Reporte de ciudadanos ********');
           writeln (Reporte, 'Fecha: ', Datos_Fecha.day, '/', Datos_Fecha.Month, '/', Datos_Fecha.year);
           Writeln (Reporte, 'Hora: ', Datos_Fecha.Hour, ':', Datos_Fecha.min, ':', Datos_Fecha.sec);
           writeln (Reporte, '******** Lista ********');

           reset (Registro);
           seek (Registro, 0);
           Write ('Ingrese una letra para buscar los nombres que empiezen con dicha letra: ');
           Readln (Letra);
           writeln ('Ingrese un rango de fecha a buscar: ');
           Readln (Anio_Min);
           Readln (Anio_Max);

           While Not eof (Registro) Do
             Begin
               Read (Registro, datos);

               //determinando si cumple con los requisitos

               If (Datos.Nombre[1] = letra) Then
                 If (Datos.Fn.Anio >=Anio_Min) And (Datos.Fn.Anio <= Anio_Max) Then
                   writeln (Reporte, Datos.nombre, '     ', Datos.Direccion);
             End;
           Close (Reporte);
           close (Registro);

         End;
    End;

  Until (Opcion_Menu = 3);

End.
