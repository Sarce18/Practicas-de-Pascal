program PagodeMatricula;
Uses
    crt;
const
  Pago_Pregrado = 150;
  Pago_Postgrado = 300;
Var
   Promedio, Total_Matricula, Descuento: Real;
   Nivel_Grado: string [9];
   UC, Precio: integer;

begin
  writeln ('Ingrese su nivel de grado actual (Pregrado ; Postgrado):');
  readln (Nivel_Grado);
  writeln ('Ingrese su promedio (Pregrado: 0 hasta 20 ; Postgrado: 0 hasta 10):');
  readln (Promedio);

  if (Nivel_Grado = 'Pregrado') or (Nivel_Grado = 'pregrado') then
     if (Promedio >= 15.5) then
        begin
             UC := 28;
             Descuento:= 0.20;
             Precio:= Pago_Pregrado
        end
     Else
         if (Promedio >= 14) and (Promedio < 15.5) then
            begin
                 UC:= 25;
                 Descuento:= 0.10;
                 Precio:= Pago_Pregrado
            end
         Else
             if (Promedio >= 12.5) and (Promedio < 14) then
                begin
                UC:= 20;
                Precio:= Pago_Pregrado;
                end
             ELse
                 if (Promedio >= 10) and (Promedio < 12.5) then
                    begin
                    UC:= 15;
                    Precio:= Pago_Pregrado;
                    end
                 Else
                     if (Promedio<10) then
                             UC:= 0;

  if (Nivel_Grado = 'Postgrado') or (Nivel_Grado = 'postgrado') then
     if (Promedio >= 4.5) then
        begin
             UC:= 20;
             Descuento:= 0.20;
             Precio:= Pago_Postgrado
        end
     else
         if (Promedio < 4.5) then
            begin
            UC:= 10;
            Precio:= Pago_Postgrado;
            end;

     //Calculo del pago

     Total_Matricula:= UC*Precio*Descuento;

     clrscr;
     writeln ('Usted podra inscribir ', UC, ' UC');
     writeln ('El costo total de la matricula es: Bs ', Total_Matricula:0:2);

  Readkey;
end.

