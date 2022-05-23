program RecibodePago;
Uses
    crt, DOS;
Var
  Genero: Char;
  Num_Hijos, ISLR: Integer;
  Cedula: String [8];
  Nombre, Direccion: String [22];
  Dia_Ingreso, Mes_Ingreso, Anyo_Ingreso, Mes_Pago, Anyo_Pago: String [4];
  Sueldo_Basico_Mensual, Prima_Transporte, Bono_Alimentacion, Prima_Hijos,
  Sueldo_Integral_Mensual, Descuento_ISLR, Neto_Cobrar: Real;
  Anyo_Sistema, Mes_Sistema, Dia_Sistema, Dia_Sem_Sistema, Hora_Sistema,
  Min_Sistema, Seg_Sistema, Mili_Seg_Sistema: Word;

begin
  Writeln ('Ingrese su nombre y apellido:');
  Readln (Nombre);
  Writeln ('Ingrese su genero (M: Masculino ; F: Femenino):');
  Readln (Genero);
  Writeln ('Ingrese su Nro de Cedula de Identidad');
  Readln (Cedula);
  Writeln ('Ingrese su direccion de vivienda:');
  Readln (Direccion);
  Writeln ('Ingrese su fecha de ingreso, usando el formato DD/MM/AAAA :');
  Readln (Dia_Ingreso);
  Readln (Mes_Ingreso);
  Readln (Anyo_Ingreso);
  Writeln ('Ingrese su fecha del pago, usando el formato MM/AAAA :');
  Readln (Mes_Pago);
  Readln (Anyo_Pago);
  Writeln ('Ingrese el Nro de hijos que posee:');
  Readln (Num_Hijos);
  Writeln ('Ingrese su sueldo basico mensual (Bs):');
  Readln (Sueldo_Basico_Mensual);
  Writeln ('Ingrese la prima de transporte (Bs):');
  Readln (Prima_Transporte);
  Writeln ('Ingrese su bono de alimentacion (Bs):');
  Readln (Bono_Alimentacion);
  Writeln ('Ingrese el porcentaje de retencion de ISLR (Impuesto Sobre la Renta):');
  Readln (ISLR);

  // Calculo de la prima por hijos

  Prima_Hijos:= Num_Hijos * 0.50 * Sueldo_Basico_Mensual;

  // Calculo del sueldo integral mensual

  Sueldo_Integral_Mensual:= Sueldo_Basico_Mensual + Prima_Hijos + Prima_transporte;

  // Calculo del descuento de ISLR

  Descuento_ISLR:= (ISLR/100) * Sueldo_Integral_Mensual;

  // Calculo del neto a cobrar

  Neto_Cobrar:= Sueldo_Integral_Mensual + Bono_Alimentacion - Descuento_ISLR;

  // Obteniendo la Fecha y Hora del sistema

  Getdate (Anyo_Sistema, Mes_Sistema, Dia_Sistema, Dia_Sem_Sistema);

  Gettime (Hora_Sistema, Min_Sistema, Seg_Sistema, Mili_Seg_Sistema);

  // Mostrando los datos de salida

  clrscr;
  Writeln ('ORINOKIA CITY');
  gotoxy (60,1);
  Writeln (Dia_Sistema, '/', Mes_Sistema, '/', Anyo_Sistema,' ', Hora_Sistema, ':', Min_Sistema);
  gotoxy (16,3);
  Writeln ('RECIBO DE PAGO CORRRESPONDIENTE AL ', Mes_Pago, '-', Anyo_Pago);
  gotoxy (1,5);
  Writeln ('Cedula: ', Cedula);
  gotoxy (39,5);
  Writeln ('Nombre: ', Nombre);
  gotoxy (1,6);
  Writeln ('Direccion: ', Direccion);
  gotoxy (39,6);
  if (Genero = 'M')then
     Writeln ('Genero: M - Masculino')
  else
      Writeln ('Genero: F - Femenino');
  gotoxy (1,7);
  Writeln ('Fecha de ingreso: ', Dia_Ingreso, '/', Mes_Ingreso, '/', Anyo_Ingreso);
  gotoxy (39,7);
  Writeln ('Nro.Hijos: ', Num_Hijos);
  gotoxy (1,9);
  Writeln ('Sueldo basico mensual (Bs):           ', Sueldo_Basico_Mensual:0:2);
  gotoxy (1,10);
  Writeln ('Prima por hijos:                      ', Prima_Hijos:0:2);
  gotoxy (1,11);
  Writeln ('Prima de transporte:                  ', Prima_Transporte:0:2);
  gotoxy (1,12);
  Writeln ('Bono alimentacion (Bs):               ', Bono_Alimentacion:0:2);
  gotoxy (1,13);
  Writeln ('Descuento de ISLR de ', ISLR, '% :             ', Descuento_ISLR:0:2);
  gotoxy (35,14);
  writeln ('-------------');
  gotoxy (1,15);
  writeln ('Neto a cobrar:                        ', Neto_Cobrar:0:2);

  Readkey;

end.

