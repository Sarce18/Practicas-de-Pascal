program PagodeFumigacion;
Uses
    crt;
Var
  Nombre: string [22];
  Tipo_Fumigacion: char;
  Num_Hectareas, Precio, Monto_Parcial: integer;
  Monto_Total, Monto_Descuento1, Monto_descuento2: Real;

begin
  Precio:= 0;
  Monto_Descuento1:= 0;

  Writeln ('Ingrese el nombre y apellido del granjero:');
  readln (Nombre);
  Writeln ('Ingrese el tipo de fumigacion deseada. Luego indique la cantidad de hectareas que desea fumigar:');
  Writeln ('1. Fumigacion contra malas hierbas, $10 por hectarea.');
  Writeln ('2. Fumigacion contra langostas, 15$ por hectarea.');
  Writeln ('3. Fumigacion contra malos gusanos, $20 por hectarea.');
  Writeln ('4. Fumigacion contra todo lo anterior, 30$ por hectarea.');
  Readln (Tipo_Fumigacion, Num_Hectareas);

  //Determinando el valor que se le asignará a la variable Precio

  If (Tipo_Fumigacion = '1') then
     Precio:= 10
  else
      If (Tipo_Fumigacion = '2') then
         Precio:= 15
      Else
          If (Tipo_Fumigacion = '3') then
             Precio:= 20
          Else
              If (Tipo_Fumigacion = '4') then
                 Precio:= 30;

  // Calculo del monto parcial

  Monto_Parcial:= Num_Hectareas * Precio;

  //Determinando el monto total a pagar

  If (Num_Hectareas < 1000) and (Monto_Parcial < 3000) then
     Monto_Total:= Monto_Parcial
  Else
      If (Num_Hectareas > 1000) and (Monto_Parcial > 3000) then
         Begin
              Monto_Descuento1:= Monto_Parcial - (Monto_Parcial * 0.05);
              Monto_Descuento2:= (Monto_Descuento1 - 3000) * 0.10;
              Monto_Total:= Monto_Descuento1 - Monto_Descuento2;
         End
      Else
          If (Num_Hectareas > 1000) then
             begin
                  Monto_Descuento1:= Monto_Parcial * 0.05;
                  Monto_Total:= Monto_Parcial - Monto_Descuento1;
             end
          Else
              If (Monto_Parcial > 3000) then
                 Begin
                      Monto_Descuento1:= (Monto_Parcial - 3000) * 0.10;
                      Monto_Total:= Monto_Parcial - Monto_Descuento1;
                 End;

  clrscr;
  Writeln ('Nombre del Granjero: ', Nombre);
  Writeln ('Total a pagar: ', Monto_Total:0:2, ' $');


  readkey;
end.

