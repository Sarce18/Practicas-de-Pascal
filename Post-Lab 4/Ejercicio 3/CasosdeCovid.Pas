
Program CasosdeCovid;

Uses Crt;

Var 
  Casos : Array [1..5,1..12,1..3] Of Integer;
  Mujeres_Contg_Est: Array [1..5] Of integer;
  Opcion: Char;
  i, j, k, mes, hombres_Contg_Mes, mayor, Acum_estado_Contg,
  Salv_Acum_estado_Contg: Integer;
Begin
  //Inicializacion de algunas variables

  i := 0;
  j := 0;
  k := 0;
  mayor := 0;
  Repeat
    Begin


//Primer menu, que contiene una opcion para los datos de entrada y una opcion para los datos de salida

      clrscr;
      Writeln ('1. Registrar Reportes de COVID-19.');
      Writeln ('2. Mostrar: ');
      Writeln ('- Cantidad de mujeres contagiadas en cada estado.');
      Writeln ('- Cantidad de hombres contagiados durante un mes dado.');
      Writeln ('- El estado con mayor numero de contagio.');
      Readln (Opcion);

      Case Opcion Of 

        //Opcion de datos de entrada

        '1':
             Begin


//Ciclos para guardar los diferentes datos en cada casilla del arreglo tridimensional

               clrscr;
               For i:= 1 To 5 Do
                 For j := 1  To 12 Do
                   For k := 2 To 3 Do
                     Begin
                       Writeln ('1. Hombre ; 2. Mujer');
                       Writeln (




                   'Ingrese la cantidad de contagiados de COVID-19 del Estado: '
                                , i, ' ; del mes: ', j, ' ; de sexo: ', k-1);
                       Readln (Casos [i,j,k]);
                     End;



             End;

        //Opcion para los datos de salida

        '2':
             Begin

               //calculo de la cantidad de mujeres contagiadas en cada estado

               clrscr;
               For i := 1 To 5 Do
                 For j := 1 To 12 Do
                   Mujeres_Contg_Est[i] := Mujeres_Contg_Est[i] + Casos [i,j,3];

               //Cantidad de hombres contagiados durante un mes dado

               Writeln (




'Indique el mes deseado, para saber la cantidad de hombres contagiados en dicho mes: '
               );
               Readln (mes);

               For i := 1 To 5 Do
                 hombres_Contg_Mes := hombres_Contg_Mes + Casos [i, mes, 2];

               //Calculo del estado con mayor numero de contagio

               For i := 1 To 5 Do
                 Begin
                   Acum_estado_Contg := 0;
                   For j := 1 To 12 Do
                     For k := 2 To 3 Do
                       Acum_estado_Contg := Acum_estado_Contg + Casos[i,j,k];

                   If (Acum_estado_Contg > Salv_Acum_estado_Contg) Then
                     Begin
                       Mayor := i;
                       Salv_Acum_estado_Contg := Acum_estado_Contg;
                     End;

                 End;

               //Salida

               Writeln ('Cantidad de mujeres contagiadas en cada estado:');
               For i := 1 To 5 Do
                 Writeln ('Estado (',i,'): ', Mujeres_Contg_Est[i]);

               Writeln ('Cantidad de hombres contagiados durante el mes ', mes,
                        ': ', hombres_Contg_Mes);

               Writeln ('El estado con mayor numero de contagio es el: ', Mayor)
               ;
             End;
      End;
    End;
  Until (Opcion = '2');

  Readkey;

End.
