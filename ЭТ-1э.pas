program et_1; //Экстрасенсорный терминал №ЭТ-1 "Кармакорректор"
uses CRT;
procedure intro;
begin
writeln ('*************************');
)delay (480);
writeln ('*    ЭКСТРАСЕНСОРНЫЙ    *');
delay (480);
writeln ('*   ТЕРМИНАЛ №ЭТ-1     *');
delay (480);
writeln ('*************************');
//delay (480);
writeln;
delay (480);
writeln ('Кармакорректор');
end;
var d, m, y: integer; g: char; fn, ln: string;
begin
intro;
writeln;
delay (200);
writeln ('Введите вашу фамилию:');
readln (ln);
writeln ('Введите ваше имя:');
readln (fn);
writeln ('Укажите ваш пол (М/Ж):');
readln (g);
if (g <> 'М') or (g <> 'Ж') then
writeln ('Error G1: Неверно указан пол');
writeln ('Введите дату рождения: (1-31 1-12 0-9999');
readln (d, m, y);
if (d=29) and (m=2) and (y mod 4 <> 0) then 
writeln ('Error D1: Несоблюдение високосности');
if (m>12) or (m<1) or (d>31) or (d<1) then
writeln (
