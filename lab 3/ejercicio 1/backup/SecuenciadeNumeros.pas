program SecuenciadeNumeros;
Uses
    Crt;
Var
  NEP, VN, Primos, i, j, Cont_Num, Cont_P, Cont_I, Mayor, Menor, Cont_IVN: Integer;
  Porct_NP, Porct_NI: Real;

begin
  Cont_I:= 0;
  Cont_Num:= 0;
  Cont_P:= 0;
  i:= 0;
  Mayor:= 0;
  Menor:= 99999;
  Primos:= 0;
  Cont_IVN:= 0;
  Repeat
        Clrscr;
        Writeln ('Ingrese un numero entero positivo cualquiera (Excepto el cero (0)):');
        Readln (VN);

         If (VN = 0) then
            Begin
                 Writeln ('Usted ha ingresado un valor ivalido. Vuelva a intentarlo');
                 Readkey;
            end;
  until (VN <> 0);

  Repeat
        clrscr;
        Writeln ('Ahora, ingrese una secuencia de numeros enteros positivos (Para finalizar la secuencia, ingrese un cero (0)):');
        Readln (NEP);

        If (NEP < 0) then
           begin
                Writeln ('Usted ha ingresado un valor ivalido. Vuelva a intentarlo');
                Readkey;
           end;
  until (NEP >= 0);

  While (NEP <> 0) do
        Begin
             Cont_Num:= Cont_Num + 1;
             If (NEP mod 2 = 0) then
                Cont_P:= Cont_P + 1
             else
                 Cont_I:= Cont_I + 1;

             If (NEP = VN) then
                Cont_IVN:= Cont_IVN + 1;

             If (NEP > Mayor) then
                Mayor:= NEP;

             If (NEP < Menor) then
                Menor:= NEP;

             j:= 0;

             For i:= 1 to NEP do
                 Begin
                      If (NEP mod i = 0)then
                         j:= j + 1;
                 end;

              If (j = 2) then
                 Primos:= Primos + 1;

             Writeln ('Ingrese el siguiente numero (Recuerde que para finalizar la secuencia, debe ingresar el cero (0)):');
             Readln (NEP);
        end;

  Porct_NP:= (Cont_P * 100)/Cont_Num;
  Porct_NI:= (Cont_I * 100)/Cont_Num;

  Writeln ('Porcentaje de numeros pares: ', Porct_NP:0:2, ' %');
  Writeln ('Porcentaje de numeros impares: ', Porct_NI:0:2, ' %');
  Writeln ('Cantidad de valores iguales a ', VN, ': ', Cont_IVN);
  Writeln ('Numero mayor de la secuencia: ', Mayor);
  Writeln ('Numero menor de la secuencia: ', Menor);
  Writeln ('Cantidad de numeros primos: ', Primos);

  Readkey;


end.

