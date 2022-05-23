program CalculodeFactorial;
uses
    crt;
var
  N, Fact, i, Opcion: integer;

begin
   Fact:= 1;
   i:= 1;
  Writeln ('Ingrese el numero a calcular:');
  Readln (N);
  Writeln ('indique la opcion que desea utilizar: 1.Repetir Para ; 2.Repetir Mientras ; 3.Repetir Hasta');
  Readln (Opcion);

  if (N > 0)then
     begin

          Case Opcion of

               1:
                 For i:=1 to N do
                     Fact:= Fact * i;
               2:
                 while (i <= N) do
                       begin
                            Fact:= Fact * i;
                            i:= i+1;
                       end;

               3:
                 Repeat
                           Fact:= Fact * i;
                           i:= i+1;

                 until (i > N);
         end;

     end
  else
      Fact:= 1;

  Writeln ('El factorial de ', N, ' es: ', Fact, '!');
  Readkey;
end.

