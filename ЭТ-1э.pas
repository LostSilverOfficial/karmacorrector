program et_1;  //Экстрасенсорный терминал №ЭТ-1 "Кармакорректор"

uses
  CRT;

procedure intro;
begin
  writeln('*************************');
  delay(480);
  writeln('*    ЭКСТРАСЕНСОРНЫЙ    *');
  delay(480);
  writeln('*    ТЕРМИНАЛ №ЭТ-1     *');
  delay(480);
  writeln('*************************');
  //delay (480);
  writeln;
  delay(480);
  writeln('КАРМАКОРРЕКТОР');
end;

{const
  Male = 'М';
  F = 'Ж';}

var
  d, m, y: integer;
  g: char;
  fn, ln: string;
  age: word;
  i: integer;

begin
  intro;
  writeln;
  delay(200);
  writeln('Введите вашу фамилию:');
  readln(ln);
  writeln('Введите ваше имя:');
  readln(fn);
  writeln('Укажите ваш пол (М/Ж):');
  readln(g);
  // if (g <> Male) or (g <> F) then
    // writeln('Error G1: Неверно указан пол!');
  writeln('Введите дату рождения: (1-31 1-12 0-9999');
  readln(d, m, y);
  if (d = 29) and (m = 2) and ((y mod 4 <> 0) or (y mod 100 = 0)) then 
  begin
    writeln('Error D1: Нарушение високосности');
    // end.
  end;
  if (m > 12) or (m < 1) or (d > 31) or (d < 1) then
    writeln('Error D2: Вневременная точка');
  if ((m <> 1) or (m <> 3) or (m <> 5) or (m <> 7) or (m <> 8) or (m <> 10) or (m <> 12)) and (d > 31) then
    writeln('Error C1: Нарушение календарной последовательности');
  if ((m <> 4) or (m <> 6) or (m <> 9) or (m <> 11)) and (d > 30) then
    writeln('Error C1: Нарушение календарной последовательности');
  writeln('Укажите ваш возраст: ');
  readln(age);
  if age <= 18 then
  begin
    writeln('Ещё не поздно всё исправить. Для коррекции кармы нажмите Enter');
    readln ();
    for i := 1 to 10 do
    begin
      write('■■■');
      delay(750);
    end;
    writeln;
    writeln('Карма откорректирована');
  end
  else writeln('Слишком поздно. Ваша карма не поддаётся корректировке');
  writeln;
  writeln('Для закрыттия терминала нажмите Enter');
  readln;
  clrscr;
end.
