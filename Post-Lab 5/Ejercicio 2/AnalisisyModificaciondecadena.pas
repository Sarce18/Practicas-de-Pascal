
Program AnalisisyModificaciondecadena;

Uses Crt;

Var 
  Cadena: String [100];
  Cadena_PalabrasL, Cadena_4letras: String [50];
  Palabra: string [20];
  letra: char;
  i, j, Cont_Palabras_4L, cont_letras, Posicion: Integer;

Begin
  Cadena_PalabrasL := '';
  Palabra := '';
  Cadena_4letras := '';
  Cont_Palabras_4L := 0;
  Writeln ('Ingrese una cadena de caracteres conformada por varias palabras: ');
  Readln (Cadena);
  Writeln ('Ingrese una letra, para buscar las palabras que la contengan: ');
  Readln (Letra);

  //Proceso para buscar una palabra en la cadena

  For i:= 1 To length (Cadena) Do
    If (cadena[i] <> ' ') Then
      palabra := palabra + lowercase (cadena[i])
    Else
      Begin

        //Inicializando Contador para la cantidad de letras que posee la palabra

        cont_letras := 0;

        For j:= 1 To length (palabra) Do
          Begin

            //Contador para la cantidad de letras que posee la palabra

            cont_letras := cont_letras + 1;

            //Proceso para determinar las palabras que contiene la letra ingresada por el usuario

            If (palabra [j] = letra) Then
              If (Pos (Palabra, Cadena_PalabrasL) = 0) Then
                Begin
                  Cadena_PalabrasL := Cadena_PalabrasL + palabra + ', ';
                End;
          End;

        //Procesos para las palabras con 4 letras 

        If (cont_letras = 4) Then
          Begin

            //Almacenando las palabras en una cadena diferente y contandolas

            Cadena_4letras := Cadena_4letras + Palabra + ' ';
            Cont_Palabras_4L := Cont_Palabras_4L + 1;

            //Reemplazando las palabras por *

            While (Pos (Palabra, Cadena) <> 0) Do
              Begin
                Posicion := Pos (Palabra, Cadena);
                Delete (Cadena, Posicion, length (Palabra));
                Insert ('****', Cadena, Posicion);
              End;
          End;

        //Reiniciando la variable

        palabra := '';
      End;

  //Mostrar la salida

  writeln ('Palabras que contienen la letra ', Letra, ': ', Cadena_PalabrasL);
  writeln ('Palabras con 4 letras: ', Cadena_4letras, '(', Cont_Palabras_4L, ')');
  writeln ('Su nueva cadena con asteriscos es: ',Cadena);

  readkey;

End.
