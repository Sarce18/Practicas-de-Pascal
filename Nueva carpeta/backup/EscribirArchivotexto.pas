
Program EscribirArchivotexto;

Uses Crt, Sysutils;

Type
  Registro = Record
    Nombre, Correo, User: string [40];
    Clave: String [10];
  End;

  Archivo = File Of Registro;

  Datos = Array [1..50, 1..4] Of Registro;

Const Fichero = '.\EscribirArchivotexto';

Var

  arch: Archivo;
  Linea: Registro;


Begin
  Assign (arch, 'Jugadores.TXT');
  If Not (FileExists ('Jugadores.TXT')) Then
    Rewrite (arch);
  seek (arch, filesize(arch));
  While (Linea.nombre <> '_Q') Do
    Begin

      Write('linea (_Q para terminar):');
      Readln (Linea.Nombre);
      Write('linea (_Q para terminar):');
      Readln (Linea.User);

      If Linea.Nombre <> '_Q' Then
        Write (Arch, Linea);
    End;

  Close (Arch);

  Readkey;



End.

end.
