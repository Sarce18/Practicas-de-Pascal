
Program CalculodeRaices;

Uses Crt;

Var 
  a, b, c, d, RaizR1, RaizR2, RaizCJ, NumIQ: Real;

  //Funcion para el calculo de la raiz unica

Function RaizU (aa, bb, cc: real; Opcion: integer): Real;
Begin
  //Opcion para determinar que raiz unica es la que se va a calcular

  Case opcion Of 

    //cuando b es mdiferente de 0 

    1:
       RaizU := -cc/bb;

    //cuando el discriminante es igual a 0

    2:
       RaizU := -bb/(2*aa);
  End;
End;

//Funcion para el calculo del discriminante

Function Discriminante(ad,bd,cd: Real): Real;
Begin
  Discriminante := sqr (bd) - 4*ad*cd;
End;

//Procedimineto para el calculo de las raices reales

Procedure raicesReales(aa,bb,dd: real; Var x1,x2: real);
Begin
  x1 := (-bb + sqrt (dd))/(2*aa);
  x2 := (-bb - sqrt (dd))/(2*aa);
End;

//Procedimiento para el calculo de las raices complejas

Procedure RaicesComplejas (aa,bb,cc:Real; Var J,Q:Real);
Begin
  J := -bb/(2*aa);
  Q := sqrt (Abs (sqr(bb)-4*aa*cc))/(2*aa);
End;

//Programa principal

Begin
  Writeln ('Ingrese los valores de A, B y C, segun la formula Ax^2+Bx+C=0:');
  Readln (a, b, c);

  //verficadno los valores de a y b para realizar el calculo de las raices

  If (a = 0) Then
    Begin
      If (b = 0) Then
        Begin
          clrscr;
          Writeln ('Ecuacion degenerada.');
        End
      Else
        Begin
          Writeln ('Existe una raiz unica.');
          Writeln ('Valor de la raiz: ', RaizU(a,b,c,1): 0: 2);
        End;
    End
  Else
    If (a <> 0) And (b <> 0) Then
      Begin
        d := Discriminante (a,b,c);

        //Determinando que procedimiento se utilizara para el calculo de las raices

        //Raices Reales

        If (d > 0)Then
          Begin
            raicesReales (a,b,d,RaizR1,RaizR2);
            clrscr;
            Writeln ('Existen dos raices reales.');
            Writeln ('Valor de la primera raiz (x1): ', RaizR1:0:2);
            Writeln ('Valor de la segunda raiz (x2): ', RaizR2:0:2);
            readkey;
          End;

        //Raices complejas

        If (d < 0)Then
          Begin
            RaicesComplejas (a,b,c,RaizCJ,NumIQ);
            clrscr;
            Writeln ('Existen dos raices complejas.');
            Writeln ('Valor de la primera raiz (x1): ', RaizCJ:0:2, ' + ', NumIQ:0:2, 'i');
            writeln ('Valor de la segunda raiz (x2): ', RaizCJ:0:2, ' - ', NumIQ:0:2, 'i');
            Readkey;
          End;

        //Raiz unica

        If (d = 0) Then
          Begin
            clrscr;
            Writeln ('Existe una raiz real.');
            writeln ('Valor de la raiz: ', RaizU(a,b,c,2): 0: 2);
            Readkey;
          End;

      End;

End.
