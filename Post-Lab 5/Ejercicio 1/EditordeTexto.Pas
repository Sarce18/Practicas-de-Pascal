
Program EditordeTexto;

Uses Crt;

Var 
  Opcion, Opcion2, posicion_SC: Integer;
  Texto, TextoAux: String [100];
  SubCadena_Eliminar, subcadena_sustituir, subcadena: String [30];

Begin
  Writeln ('Ingrese una cadena de caracteres (Texto): ');
  Readln (Texto);

  Repeat
    clrscr;
    Writeln ('Selecione la opcion a utilizar: ');
    Writeln ();
    Writeln ('1. Determinar la longitud de la cadena de caracteres.' );
    Writeln ('2. Eliminar una subcadena de la cadena principal.' );
    Writeln ('3. Localizar una subcadena en la cadena principal.' );
    Writeln ('4. Insertar una subcadena a la principal en una posicion especifica.');
    Writeln ('5. Sustituir una cadena por otra cadena dada.');
    Writeln ('6. Convertir Toda la cadena de caracteres en mayusculas o minusculas.');
    Writeln ('7. Utilizar una nueva cadena.');
    Writeln ('8. Finalizar el editor de texto.');
    Readln (Opcion);


    Case Opcion Of 

      //Determinando la longitud del texto

      1:
         Begin
           clrscr;
           Writeln ('La longitud de su cadena de caracteres es: ', length (Texto));

           Readkey;
         End;

      //Borrar una subcadena dada por teclado

      2:
         Begin
           TextoAux := '';
           clrscr;
           Writeln ('Ingrese una subcadena que desee eliminar de su texto: ');
           Readln (SubCadena_Eliminar);
           TextoAux := Texto;

           While (pos (Subcadena_Eliminar, textoaux) <> 0) Do
             Begin
               Delete (TextoAux, pos (Subcadena_Eliminar, textoaux), length (Subcadena_Eliminar));
             End;

           Writeln ('Cadena anterior: ');
           writeln (Texto);
           writeln ();
           Writeln ('Cadena nueva: ');
           Writeln (TextoAux);

           Texto := TextoAux;

           Readkey;

         End;

      //Localizar una subcadena en la cadena principal

      3:
         Begin
           clrscr;
           Writeln ( 'Ingrese una subcadena que quiera localizar en la cadena principal: ');
           Readln (subcadena);

           TextoAux := Texto;
           Writeln ('Su subcadena se encuentra en la posicion (es): ');

           While (Pos(subcadena, TextoAux) <> 0) Do
             Begin

               Writeln (Pos(subcadena, TextoAux));

               Delete (TextoAux, Pos(subcadena, TextoAux), Length (subcadena));
             End;
           readkey;
         End;

      //Insertar una subcadena a la principal en una posicion especifica

      4:
         Begin
           Clrscr;
           TextoAux := texto + ' ';
           Writeln ('Ingrese una subcadena que desee insertar en la cadena principal: ');
           Readln (subcadena);

           Writeln ('Ingrese la posicion en la que quiere insertar su subcadena: ');
           Readln (posicion_SC);

           Insert(subcadena, TextoAux, posicion_SC);

           Writeln ('Cadena anterior:');
           Writeln (Texto);

           writeln ();

           Writeln ('Cadena nueva: ');
           Writeln (TextoAux);

           Texto := TextoAux;

           readkey;
         End;

      //Sustituir una cadena por otra cadena dada

      5:
         Begin
           clrscr;
           TextoAux := texto;
           writeln ('Ingrese la candena que desea reemplazar: ');
           readln (SubCadena_Eliminar);
           writeln ('Ingrese la cadena por la que se va a reemplazar: ');
           readln (subcadena_sustituir);

           While (Pos (SubCadena_Eliminar, TextoAux) <> 0) Do
             Begin
               posicion_SC := Pos (SubCadena_Eliminar, TextoAux);

               Delete (TextoAux, posicion_SC, length (SubCadena_Eliminar));

               Insert(subcadena_sustituir, TextoAux, posicion_SC);
             End;
           Writeln ('Cadena anterior: ');
           Writeln (Texto);
           Writeln ();
           Writeln ('Cadena nueva: ');
           Writeln (TextoAux);

           Texto := TextoAux;

           Readkey;

         End;

      //Convertir Toda la cadena de caracteres en mayusculas o minusculas

      6:
         Begin
           clrscr;
           Writeln ('Seleccione una de las siguientes opciones: ');
           Writeln ('1. Cambiar toda la cadena a letras mayusculas.');
           Writeln ('2. Cambiar toda la cadena a letras minusculas.');
           Readln (Opcion2);
           TextoAux := Texto;

           If (Opcion2 = 1) Then
             TextoAux := Upcase (TextoAux)
           Else
             TextoAux := Lowercase(TextoAux);

           Writeln ('Cadena anterior: ');
           Writeln (Texto);
           Writeln ();
           Writeln ('Cadena nueva: ');
           Writeln (TextoAux);

           Texto := TextoAux;

           Readkey;
         End;

      7:
         Begin
           clrscr;
           Writeln ('Ingrese una cadena de caracteres (Texto): ');
           Readln (Texto);
         End;

    End;

  Until (opcion=8);

End.
