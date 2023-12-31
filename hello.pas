﻿(*змените код в файле hello.pas, чтобы программа спрашивала у пользователя текущий час (от 0 до 23), и, в зависимости от введённого значения, выводила: 
"Доброе утро, мир!" с 4 до 10 часов, "Добрый день, мир!" с 11 до 16 часов, "Добрый вечер, мир!" с 17 до 22 часов, "Доброй ночи, мир!" в остальных случаях.*)
begin
  var language := ReadString('Выберите язык Русский/English/Espanol :');
  var N := ReadInteger('Введите номер часа:');
  Assert((N > 0) and (N < 24));
  case language of
    'Русский': case N of
       4..10 : print('Доброе утро, мир!');
       11..16 : print('Добрый день, мир!');
       17..22 : print('Добрый вечер, мир!');
       else 
         print('Доброй ночи, мир!');
       end;
    'English': case N of
       4..10 : print('Good morning, world!');
       11..16 : print('Good afternoon, world!');
       17..22 : print('Good evening, world!');
       else 
         print('Good night, world!');
       end;
    'Espanol': case N of
       4..10 : print('Buenos días, mundo!');
       11..16 : print('Buenas tardes, mundo!');
       17..22 : print('Buenas noches, mundo!');
       else 
         print('Buenas noches, mundo!');
       end;
    else
      print('Данный язык не поддерживается.');
  end;
end.
(*
Введите номер месяца: 4
Доброе утро, мир! 

Введите номер месяца: 11
Добрый день, мир! 

Введите номер месяца: 17
Добрый вечер, мир! 

Введите номер месяца: 23
Доброй ночи, мир! 
*)

