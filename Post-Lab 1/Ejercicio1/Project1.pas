program SecuenciadeNumeros;
Uses
    Crt;
Var
  Mayor, Menor, Cont_Num, Cont_NP, Cont_NM, Cont_Uno, Num, Num_Perf, i: Integer;
  Prom_Perf, Prom_Malv: Real;

begin
  Mayor := 0;
  Menor := 99999;
  Cont_Num := 0;
  Cont_NP := 0;
  Cont_NM:= 0;
  Cont_Uno:= 0;

  //Validando que la entrada sea un numero natural

  Repeat
        clrscr;
        Writeln ('Ingrese una secuencia de números naturales (Para finalizar la secuencia, debe ingresar un cero (0)) :');
        Readln (Num);

        If (Num < 0) then
           Begin
                Writeln ('Usted ha ingresado un valor invalido.');
                Readkey;
           end;

  until (Num >= 0);

  While (Num <> 0) do
     Begin

        //Contador para la cantidad de numeros que se ingreso en la secuencia

	Cont_Num := Cont_Num + 1;

        //Determinando el numero mayor y el menor de la secuencia

	If (Num > Mayor) Then
		Mayor := Num;

	If (Num < Menor) Then
		Menor := Num;

        //Determinando si el numero ingresado es un numero perfecto

	Num_Perf := 0;

	For i:= 1 to (num - 1) do
            Begin
	         if (Num mod i = 0) then
	            Num_Perf := Num_Perf + i;
            End;

        //Contador para la cantidad de numeros perfectos en la secuencia

	If (Num_Perf = Num) then
		Cont_NP := Cont_NP + 1;

        //Determinando los valores binarios del numero ingresado

        Repeat
	      If (Num Mod 2 <> 0) then
	         Cont_Uno := Cont_Uno + 1;

		 Num := Num div 2;
        until (Num = 1) ;

        //Determinando si el numero ingresado es un numero malvado. en dado caso que lo sea, se añade al contador

	If (Cont_Uno mod 2 = 0) Then
		Cont_NM := Cont_NM +1;

        Writeln ('Ingrese el siguiente numero (Recuerde que para finalizar la secuencia, ingrese un cero(0)):');
        Readln (Num);
     end;

  //Calculo del promedio de numeros perfectos y malvados de la secuencia

  Prom_Perf := (Cont_NP * 100)/Cont_Num;
  Prom_Malv := (Cont_NM * 100)/Cont_Num;

  Writeln ('Numero mayor de la secuencia: ', Mayor);
  Writeln ('Numero menor de la secuencia: ', Menor);
  Writeln ('Promedio de los numeros perfectos: ', Prom_Perf:0:2);
  Writeln ('Promedio de los numeros malvados: ', Prom_Malv:0:2);

  Readkey;

end.

