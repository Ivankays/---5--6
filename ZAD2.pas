program zad2;
const
  N = 20;
var
  arr: array[1..N] of integer;
  i, a, b, c, d, f: integer;
begin
  Randomize;
  for i := 1 to N do
    arr[i] := Random(116) - 22;
  a:= 0;
  for i := 2 to N step 2 do
    if arr[i] mod 2 = 0 then
      Inc(a);
  b:= 1;
  for i := 1 to N do
    if arr[i] mod 2 <> 0 then
      b:= b * arr[i];
  Write('Введите нижнюю границу промежутка: ');
  Readln(d);
  Write('Введите верхнюю границу промежутка: ');
  Readln(f);
  c:= 0;
  for i := 1 to N do
    if (arr[i] >= d) and (arr[i] <= f) then
      c:= c + arr[i];
  Writeln('Количество четных элементов на нечетных позициях: ', a);
  Writeln('Произведение нечетных элементов массива: ', b);
  Writeln('Сумма элементов массива в заданном промежутке: ', c);
  Readln;
end.