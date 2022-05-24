program CalculodeRaices;
Uses
    Crt;
Var
  A, B, C, d, J, Q, x, x1, x2: Real;

begin
  Writeln ('Ingrese los valores de A, B y C, segun la formula Ax^2+Bx+C=0:');
  Readln (A, B, C);

  //Determinando la formula a usar para calcular la raíz o raices

  If (A = 0) Then
     begin
     If (B = 0) then
        begin
             clrscr;
             Writeln ('Ecuacion degenerada.');
        end
     else
         begin
              x := -C/B;

              clrscr;
              Writeln ('Existe una raiz unica.');
              Writeln ('Valor de la raiz: ', x:0:2);
         end;
     end
  Else
      If (A <> 0) and (B <> 0) Then
         Begin

//Calculo del discriminante

              d := sqr (B) - 4*A*C;

//Determinando la formula a utilizar

              If (d > 0) Then
                Begin
                  x1 := (-B + sqrt (d))/(2*A);
                  x2 := (-B - sqrt (d))/(2*A);

                  clrscr;
                  Writeln ('Existen dos raices reales.');
                  Writeln ('Valor de la primera raiz (x1): ', x1:0:2);
                  Writeln ('Valor de la segunda raiz (x2): ', x2:0:2);
                end
              else
                 If (d < 0)then
                    begin
                         J := -B/(2*A);
                         Q := sqrt (Abs ((sqr(B)-4*A*C)/(2*A)));

                         clrscr;
                         Writeln ('Existen dos raices complejas.');
                         Writeln ('Valor de la primera raiz (x1): ', J:0:2, ' + ', Q:0:2, 'i');
                         writeln ('Valor de la segunda raiz (x2): ', J:0:2, ' - ', Q:0:2, 'i');
                    end
                 else
                     If (d = 0) Then
                        begin
                        x:= -B/(2*A);

                        clrscr;
                        Writeln ('Existe una raiz real.');
                        writeln ('Valor de la raiz: ', x:0:2);
                        end

         end;

  Readkey ;
end.

