program AreadelTriangulo;
Uses
    Crt;
Var
  A, B, C, P, Area: Real;

begin
  Writeln ('Ingrese los tres (3) lados del triangulo:');
  Readln (A, B, C);

  //Calculo del semiperimetro del triangulo

  P:= (A+B+C)/2;

  //Calculo del Area del triangulo

  Area:= sqrt (P*(P-A)*(P-B)*(P-C));

  //Mostrar los datos de salida

  clrscr;
  Writeln ('El area del triangulo es: ', Area:0:2);

  Readkey;
end.

