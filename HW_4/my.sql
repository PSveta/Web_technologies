-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу. Необходимо написать запрос на получение 
-- имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст 
-- находится в диапазоне [18, 30) лет.
-- Примечание:
-- Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", 
-- то есть диапазон (7, 9] означает "от 7, где 7 не попадает в данный диапазон, до 9 включительно". 
-- Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как такое условие можно записать в sql по-другому.


CREATE TABLE CLASSMATES (
  Id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  adress TEXT NOT NULL
);


INSERT INTO CLASSMATES VALUES (1, 'Ирина', 18, 'Иркутск');
INSERT INTO CLASSMATES VALUES (2, 'Юрий', 20, 'Москва');
INSERT INTO CLASSMATES VALUES (3, 'Светлана', 22, 'Санкт-Петербург');
INSERT INTO CLASSMATES VALUES (4, 'Екатерина', 25, 'Улан-Удэ');
INSERT INTO CLASSMATES VALUES (5, 'Кирилл', 29, 'Москва');
INSERT INTO CLASSMATES VALUES (6, 'Егор', 30, 'Москва');
INSERT INTO CLASSMATES VALUES (7, 'Василиса', 33, 'Сестрорец');
INSERT INTO CLASSMATES VALUES (8, 'Дмитрий', 22, 'Волгоград');
INSERT INTO CLASSMATES VALUES (9, 'Владимир', 19, 'Горный Алтай');
INSERT INTO CLASSMATES VALUES (10, 'Мирослава', 31, 'Москва');


SELECT name FROM CLASSMATES WHERE adress = 'Москва' and age >=18 and age <30;