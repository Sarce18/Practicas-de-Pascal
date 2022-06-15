
Program CasosdeCovid;

Uses Crt;

Var 
  generos: Array [1..2] Of string[7] = ('Hombres', 'Mujeres');
  Estados: array[1..23] Of string[16] = ('Amazonas','Anzoategui','Apure',
                                         'Aragua','Barinas','Bolivar','Carabobo'
                                         ,'Cojedes','Delta Amacuro',
                                         'Falcon','Guarico',
                                         'Lara','Merida',
                                         'Miranda','Monagas','Nueva Esparta',
                                         'Portuguesa','Sucre','Tachira',
                                         'Trujillo','Vargas','Yaracuy','Zulia');
  meses: array[1..12] Of string[10] = ('enero','febrero','marzo','abril','mayo',
                                       'junio','julio','agosto','septiempre',
                                       'octubre','noviembre','diciembre');


  Casos : Array [1..23,1..12,1..2] Of Integer;
  Mujeres_Contg_Est: Array [1..23] Of integer;
  i, j, k, mes, hombres_Contg_Mes, Acum_estado_Contg,
  Salv_Acum_estado_Contg: Integer;
  mayor: string [16];
Begin
  //Inicializacion de algunas variables

  i := 0;
  j := 0;
  k := 0;
  Salv_Acum_estado_Contg := 0;
  hombres_Contg_Mes := 0;

  //Limpieza de la matriz casos


  For i:= 1 To 23 Do
    For j := 1  To 12 Do
      For k := 1 To 2 Do
        Casos[i,j,k] := 0;

  //Limpieza de la matriz Mujeres_Contg_Est 

  For i := 1 To 23 Do
    Mujeres_Contg_Est[i] := 0;



  For i:= 1 To 23 Do
    For j := 1  To 12 Do
      For k := 1 To 2 Do
        Begin
          Writeln ('Ingrese la cantidad de contagiados de COVID-19 del Estado: '
                   , Estados[i], ' ; del mes: ', Meses[j], ' ; de sexo: ',
                   generos[k]);
          Readln (Casos [i,j,k]);
        End;

  //calculo de la cantidad de mujeres contagiadas en cada estado

  clrscr;
  For i := 1 To 23 Do
    For j := 1 To 12 Do
      Mujeres_Contg_Est[i] := Mujeres_Contg_Est[i] + Casos [i,j,2];

  //Cantidad de hombres contagiados durante un mes dado

  Writeln (





'Indique el mes deseado, para saber la cantidad de hombres contagiados en dicho mes: '
  );
  For i:= 1 To 12 Do
    Writeln (i,'.', Meses[i]);
  Readln (mes);

  For i := 1 To 23 Do
    hombres_Contg_Mes := hombres_Contg_Mes + Casos [i, mes, 1];

  //Calculo del estado con mayor numero de contagio

  For i := 1 To 23 Do
    Begin
      Acum_estado_Contg := 0;
      For j := 1 To 12 Do
        For k := 1 To 2 Do
          Acum_estado_Contg := Acum_estado_Contg + Casos[i,j,k];

      If (Acum_estado_Contg > Salv_Acum_estado_Contg) Then
        Begin
          Mayor := Estados[i];
          Salv_Acum_estado_Contg := Acum_estado_Contg;
        End;

    End;

  //Salida

  Writeln ('Cantidad de mujeres contagiadas en cada estado:');
  For i := 1 To 23 Do
    Writeln ('Estado (',Estados[i],'): ', Mujeres_Contg_Est[i]);

  Writeln ('Cantidad de hombres contagiados durante el mes ', Meses[mes],
           ': ', hombres_Contg_Mes);

  Writeln ('El estado con mayor numero de contagio es el: ', Mayor)
  ;

  Readkey;

End.
