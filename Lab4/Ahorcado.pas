
Program Ahorcado;

Uses Crt;

Var 
  Palabra: Array [1..14] Of char = ('P','a','r','a','l','e','l','e','p','i','p',
                                    'e','d','o');
  letra: Char;
  i, Intentos: integer;
Begin
  Intentos := 5;
  Write ('Presione enter para empezar a jugar.');
  Readkey;
  Clrscr;
  While (Intentos<>0) Do
    Begin
      gotoxy (25,1);
      Writeln ('O');
      gotoxy (24,2);
      Writeln ('/I\');
      gotoxy (24,3);
      Writeln ('/ \');
      textcolor(green);
      Write ('Ingrese una letra: ');
      Read (Letra);

      For i:= 1 To 14 Do
        write ('_');
      For i:= 1 To 14 Do
        If (letra = Palabra[i]) Then
          Begin
            gotoxy (i,5);
            Write (letra);
          End;

      Intentos := 5;
    End;




End.
