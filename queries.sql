-- 1. Выбрать все данные о типах задач. Результат отсортировать по названию типа в лексикографическом порядке. 
SELECT *
FROM type_task
ORDER BY 2;

-- 2. Выбрать года рождения сотрудников без повторений.
SELECT DISTINCT to_char(date_of_birth, 'YYYY')
FROM employee
WHERE date_of_birth IS NOT NULL;

-- 3. Выбрать года и месяца вступления сотрудников в должность без повторений. Учитывать только текущие должности. Результат отсортировать в порядке убывания года и в порядке возрастания месяца.
SELECT DISTINCT EXTRACT(MONTH from begindate) month, EXTRACT(Year from begindate) year
FROM pos_of_employee
WHERE enddate IS NULL
ORDER BY 2 DESC, 1; 

-- 4. Выбрать id, фамилию и инициалы сотрудников в одном столбце. Результат отсортировать по id в порядке возрастания.
SELECT ID || ' ' || SURNAME || ' ' || SUBSTR(name, 1, 1) || '.' || SUBSTR(middlename, 1, 1) || '.' Info
FROM employee
ORDER BY id;

-- 5. Выбрать название, краткое название и описание проектов, в описании которых в описании которых есть цифры или слова, написанные через дефис. 
SELECT Name, Shortname, description
FROM project
WHERE description LIKE '%-%' OR  REGEXP_LIKE (Description, '[0-9]');

-- 6. Выбрать все данные о проектах, начавшихся более двух лет назад. 
SELECT *
FROM Project
WHERE begindate < (add_months(CURRENT_DATE, -24));

-- 7. Выбрать все данные о задачах, выполнение которых было завершено позже запланированного срока на 3-10 дней. Результат
-- отсортировать по id проекта в порядке возрастания, по дате старта в порядке убывания, по названию в порядке обратном лексикографическому.
SELECT *
FROM Task
WHERE (FACTDATE IS NOT NULL) AND ((FACTDATE - PLANNEDDATE) BETWEEN 3 AND 10)
ORDER BY project_id, begindate DESC, name DESC;

-- 8. Выбрать фамилию и инициалы сотрудников, для которых указана дата рождения и id равен 2, 3, 5, 7, 8 или 11. Результат
--  отсортировать следующим образом в первую очередь сотрудники старше 35 лет, а затем остальные сотрудники. ИСПРАВИЛА  !!!!!!!!!!!!!!
SELECT SURNAME || ' ' || SUBSTR(name, 1, 1) || '.' || SUBSTR(middlename, 1, 1) || '.' Info, trunc((sysdate - date_of_birth)/365.25) Age
FROM Employee
WHERE (Date_of_birth IS NOT NULL) AND (ID IN (2, 3, 5, 7, 8, 11))
ORDER BY 
    CASE WHEN trunc((sysdate - date_of_birth)/365.25) > 35 
    THEN 0 
    ELSE 1 
    END;

-- 2 вариант старше 35
SELECT Info
FROM (SELECT SURNAME || ' ' || SUBSTR(name, 1, 1) || '.' || SUBSTR(middlename, 1, 1) || '.' Info, trunc((sysdate - date_of_birth)/365.25) Age,
      CASE WHEN trunc((sysdate - date_of_birth)/365.25) > 35 
           THEN 0 
           ELSE 1 
           END is35
      FROM Employee 
      WHERE (Date_of_birth IS NOT NULL) AND (ID IN (2, 3, 5, 7, 8, 11)))
ORDER BY is35;    

-- 9. Выбрать названия проектов, начатых в прошлом и текущем годах. В описании которых есть цифры.  исправила через sysdate !!!!!!!!!!!!
SELECT Name
FROM Project
WHERE REGEXP_LIKE (Description, '[0-9]') AND EXTRACT(Year from begindate) >= (EXTRACT(Year from SYSDATE) - 1); 

-- 10. Выбрать названия и даты начала разработки проектов, в описании которых есть хотя бы три слова и нет символов !, ?, %, _. 
SELECT Name, begindate
FROM Project 
WHERE not REGEXP_LIKE (Description, '[!?%_]') AND (description LIKE '% % %'); -- like escape исправила !!!!!!

SELECT Name, begindate
FROM Project 
WHERE NOT (Description LIKE '%!%' OR Description LIKE '%?%' OR 
            Description LIKE '%\%%' ESCAPE '\' OR Description LIKE '%\_%' ESCAPE '\') AND (description LIKE '% % %');

--11. Выбрать все данные о задачах . В последнем столбце результирующей таблицы указать сообщение 'Задача выполнена досрочно', если фактическая дата завершения раньше планируемой
-- даты завершения, 'Задача не завершена', если не указана дата фактического завершения и 'Задача завершена с опозданием', если фактическая дата завершения больше планируемой даты завершения
SELECT id, name, description, begindate, planneddate, factdate, type_id, priority_id, project_id,
CASE WHEN factdate IS NULL THEN 'Задача не завершена' 
     WHEN (FACTDATE - PLANNEDDATE) <= 0 THEN 'Задача выполнена досрочно' 
     WHEN (FACTDATE - PLANNEDDATE) > 0 THEN 'Задача завершена с опозданием' 
     END Info
FROM Task;

-- 12. .Выбрать общее количество проектов. 
SELECT COUNT(*)
FROM Project;

-- 13. Выбрать количество различных имен сотрудников.
SELECT COUNT(DISTINCT NAME) co_names
FROM Employee;

-- 14. Выбрать дату начала разработки первого и последнего проектов.
SELECT MIN(begindate), MAX(begindate)
FROM Project;

-- 15. Выбрать среднюю продолжительность фактической реализации задач. Проектов с id 2,3 6,7,8.
SELECT ROUND(AVG(factdate - begindate), 3)
FROM Task
WHERE (Project_ID IN (2, 3, 6, 7, 8));

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!111
-- 16. Выбрать название, описание, даты начала, планируемую и фактическую даты завершения задач проекта с кратким названием ИПС BOOK
SELECT  Name, Description, Begindate, Planneddate, Factdate
FROM Task
WHERE project_id = (SELECT ID
                    FROM Project
                    WHERE Shortname = 'ИПС BOOK'); -- через соедин

-- исправила
SELECT  t.Name, t.Description, t.Begindate, Planneddate, Factdate
FROM Task t JOIN project p ON (p.id = t.project_id) AND (p.shortname = 'ИПС BOOK');
                    
-- 17. Выбрать краткое название проекта, фамилию и инициалы руководителя проекта, название, описание, дату начала и планируемую дату завершения 
-- задачи, название типа задачи,
-- фамилию и инициалы сотрудника, ответственного за выполнение задачи, фамилию, имя, отчество сотрудников, являющихся исполнителями задачи. 
-- Результат отсортировать по фамилии
-- руководителей проектов в лексикографическом порядке, по краткому названию проекта в порядке обратном лексикографическому, 
-- по названию типа задач в алфавитном
-- порядке и по названию задач тоже в лексикографическом порядке
WITH sub AS ( -- задача и ФИО ответственного исполнителя
SELECT t.id task_id, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.' name_resp
FROM task t, employee e, employee_task et
WHERE (t.id = et.task_id) AND (et.employee_id = e.id) AND (et.is_resp = 'y')
),

ruc AS ( -- проект - ФИО руководителя
SELECT p.id pr_id, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.' name_man
FROM project p JOIN employee e ON (p.employee_id = e.id)
)

SELECT p.shortname, ruc.name_man, t.name, t.description, t.begindate, t.planneddate, tt.title, sub.name_resp, 
    r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.' сотрудники
FROM employee r JOIN employee_task et ON (r.id = et.employee_id) 
                JOIN task t ON (et.task_id = t.id) 
                JOIN sub ON (sub.task_id = t.id)  
                JOIN project p ON (p.id = t.project_id) 
                JOIN ruc ON (p.id = ruc.pr_id) 
                JOIN type_task tt ON (t.type_id = tt.id)
ORDER BY 2, 1 DESC, 6, 3;

-- !!!!!!!!!!!!!!!!!!!!!!!
-- 18. Выбрать фамилию, имя, отчество сотрудников, которые работают над не завершенными задачами проекта ИПС BOOK. Результат
-- отсортировать по фамилии, имени и отчеству в лексикографическом порядке.
SELECT DISTINCT e.id, e.surname, e.name, e.middlename
FROM employee e JOIN employee_task et ON (e.id = et.employee_id)
                JOIN task t ON (et.task_id = t.id)
WHERE  (t.FACTDATE IS NULL) 
       AND t.project_id =  (SELECT id 
                            FROM Project 
                            WHERE Name = 'ИПС BOOK')
ORDER BY 1, 2, 3; -- без подзапроса соед скобочки уберу

-- ИСПРАВИЛА
SELECT DISTINCT e.id, e.surname, e.name, e.middlename
FROM employee e JOIN employee_task et ON e.id = et.employee_id
                JOIN task t ON et.task_id = t.id
                JOIN project p ON t.project_id = p.id AND p.name = 'ИПС BOOK'
WHERE t.FACTDATE IS NULL
ORDER BY 1, 2, 3;
                

-- 19. Выбрать год и количество проектов, начатых в этом году. Результат отсортировать по году в убывающем порядке.
SELECT EXTRACT(YEAR from p.begindate), count(id)
FROM project p
GROUP BY EXTRACT(YEAR from p.begindate)
order by 1;

-- 20. Выбрать названия типов задач и среднюю продолжительность работ над решением задач соответствующего типа. Результат отсортировать по названию в лексикографическом порядке.
SELECT tt.title, avg(factdate - begindate)
FROM task t JOIN type_task tt ON (t.type_id = tt.id)
WHERE factdate IS NOT NULL
GROUP BY tt.title
ORDER BY 1;

-- 21. Выбрать название проекта, краткое название проекта, фамилию и инициалы руководителя проекта и количество незавершенных на данный момент задач по проекту.
SELECT p.name, p.shortname, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.' BOSS, count(t.id) Незавершенные
FROM project p JOIN task t ON (p.id = t.project_id)
               JOIN employee r ON (p.employee_id = r.id)
WHERE (t.factdate IS NULL)
GROUP BY p.name, p.shortname, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.';

-- надо выводить если все завершились?
SELECT p.name, p.shortname, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.' BOSS, count(t.id) Незавершенные
FROM project p LEFT JOIN task t ON (p.id = t.project_id) AND (t.factdate IS NULL)
               JOIN employee r ON (p.employee_id = r.id)
GROUP BY p.name, p.shortname, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.';

-- 22. Выбрать фамилию и инициалы тех руководителей проектов, которые руководят несколькими проектами.
-- Результат отсортировать по фамилии в лексикографическом порядке.
SELECT r.id, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.' BOSS
FROM project p JOIN employee r ON (p.employee_id = r.id)
GROUP BY r.id, r.surname || ' ' || SUBSTR(r.name, 1, 1) || '.' || SUBSTR(r.middlename, 1, 1) || '.'
HAVING count(P.id) > 1;

-- 23. Выбрать название должности и количество сотрудников вступивших в должность в текущем году. Результат отсортировать по количеству в порядке убывания. 
SELECT v.title, count(p.employee_id)
FROM pos_of_employee p JOIN vacation v ON (p.vacation_id = v.id)
WHERE EXTRACT(YEAR from p.begindate) = EXTRACT(YEAR from sysdate)
GROUP BY v.title;

-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-- 24. Выбрать год начала проекта, название проекта, краткое название проекта, количество незавершенных задач, количество завершенных задач 
-- в срок, количество задач, завершенных с опозданием. !!!!!!!! сделать через 3 case без cte взять на последнюю лабу 
-- 2 вариант через case 
SELECT p.begindate, p.name, p.shortname, COUNT(CASE WHEN t.factdate IS NULL THEN t.id ELSE NULL END) НЕЗАВЕРШЕННЫЕ, 
                                         COUNT(CASE WHEN t.factdate IS NOT NULL AND (t.factdate - t.planneddate) <= 0
                                                THEN t.id ELSE NULL END) В_СРОК, 
                                         COUNT(CASE WHEN t.factdate IS NOT NULL AND (t.factdate - t.planneddate) > 0
                                                THEN t.id ELSE NULL END) ОПОЗДАНИЕ
FROM project p JOIN task t ON (p.id = t.project_id) 
GROUP BY p.begindate, p.name, p.shortname
ORDER BY 1;

-- 1 ВАРИАНТ
WITH notDone AS (
SELECT p.id, count(t.id) c
FROM project p LEFT JOIN (SELECT t.id, t.project_id FROM task t WHERE t.factdate IS NULL) t ON (t.project_id = p.id)
GROUP BY p.id
),
done AS (
SELECT p.id, count(t.id) c
FROM project p LEFT JOIN (SELECT t.id, t.project_id FROM task t WHERE t.factdate IS NOT NULL AND (t.factdate - t.planneddate) <= 0) t ON (t.project_id = p.id)
GROUP BY p.id
),
doneLate AS (
SELECT p.id, count(t.id) c
FROM project p LEFT JOIN (SELECT t.id, t.project_id FROM task t WHERE t.factdate IS NOT NULL AND (t.factdate - t.planneddate) > 0) t ON (t.project_id = p.id)
GROUP BY p.id
)
SELECT p.begindate, p.name, p.shortname, notDone.c НЕЗАВЕРШЕННЫЕ, done.c В_СРОК, doneLate.c ОПОЗДАНИЕ
FROM project p, notDone, done, doneLate
WHERE (p.id = notDone.id) AND (p.id = done.id) AND (p.id = doneLate.id)
ORDER BY 1;

-- 25. Выбрать проекты, начатые более года назад, и имеющие более трех незавершенных задач.
SELECT p.id, p.name
FROM project p JOIN task t ON (p.id = t.project_id)
WHERE p.begindate < (add_months(CURRENT_DATE, -12)) AND t.factdate IS NULL
GROUP BY p.id, p.name
HAVING count(t.id) >= 3;

-- 26. Выбрать названия типов задач, имеющих более трех незавершенных задач по одному проекту. Каждое название в результирующей
-- таблицы должно упоминаться только один раз. Результат отсортировать по названию в лексикографическом порядке.
WITH c AS (
    SELECT tt.id type
    FROM project p JOIN task t ON (p.id = t.project_id) 
                   JOIN type_task tt ON (t.type_id = tt.id)
    WHERE t.factdate IS NULL
    GROUP BY p.id, tt.id
    HAVING count(t.id) >= 3
)
SELECT DISTINCT tt.title
FROM type_task tt 
WHERE tt.id IN (SELECT type FROM c)
ORDER BY 1; -- на последнюю лабу с соединением

WITH c AS (
    SELECT tt.id type
    FROM project p JOIN task t ON (p.id = t.project_id) 
                   JOIN type_task tt ON (t.type_id = tt.id)
    WHERE t.factdate IS NULL
    GROUP BY p.id, tt.id
    HAVING count(t.id) >= 3
)
SELECT DISTINCT tt.title
FROM type_task tt JOIN c ON tt.id = c.type
ORDER BY 1; 

-- 27. Выбрать все данные по проектам, над которыми работает более пяти сотрудников моложе 25 лет.
SELECT p.id, p.name, p.shortname, p.description, p.begindate, p.employee_id
FROM project p JOIN task t ON (t.project_id = p.id) 
               JOIN employee_task et ON (t.id = et.task_id) 
               JOIN employee e ON (et.employee_id = e.id)
WHERE trunc((sysdate - e.date_of_birth)/365.25) < 25
GROUP BY p.id, p.name, p.shortname, p.description, p.begindate, p.employee_id
HAVING COUNT(et.employee_id) > 5;

-- 28. Выбрать фамилию, имя, отчество всех сотрудников, и если сотрудник, является руководителем проекта, то название проекта.
-- Результат отсортировать по фамилии, имени, отчеству в порядке обратном лексикографическому. !!!!послед лаба
SELECT e.surname, e.name, e.middlename, NVL(p.name, ' - ') --CASE WHEN p.name IS NOT NULL THEN p.name ELSE ' - ' END
FROM employee e LEFT JOIN project p ON (p.employee_id = e.id)
ORDER BY 1 DESC, 2 DESC, 3 DESC;

-- Или в одну строчку? условие
SELECT e.id, e.surname, e.name, e.middlename, NVL(LISTAGG(p.name, ', ') WITHIN GROUP (ORDER BY p.name), ' - ') Проекты --CASE WHEN p.name IS NOT NULL THEN p.name ELSE ' - ' END
FROM employee e LEFT JOIN project p ON (p.employee_id = e.id)
GROUP BY e.id, e.surname, e.name, e.middlename
ORDER BY 1 DESC, 2 DESC, 3 DESC;

-- 29. Выбрать названия всех типов задач, и если есть не завершенные задачи этот типа, то id_задачи и краткое название проекта.
SELECT tt.title, NVL2(t.id, CAST(t.id AS VARCHAR(5)), ' - '), NVL(p.shortname, ' - ') 
FROM type_task tt LEFT JOIN task t ON (t.type_id = tt.id) AND (t.factdate IS NULL) LEFT JOIN project p ON (t.project_id = p.id)
ORDER BY 1;

-- 30. Выбрать названия всех должностей, и если есть сотрудники работающие на данный момент в соответствующей должности, то их количество.
SELECT v.title, count(p.employee_id) 
FROM vacation v LEFT JOIN pos_of_employee p ON (v.id = p.vacation_id) AND (p.enddate IS NULL)
GROUP BY v.title
ORDER BY 1;

-- 31. Для каждого названия проекта выбрать названия всех типов задач.
SELECT p.name, t.title
FROM project p CROSS JOIN type_task t;
               
-- 32. Для каждого названия проекта выбрать названия всех типов задач, и если есть в проекте соответствующего типа задачи, то их количество. 
SELECT p.name, tt.title, count(t.id) ЗАДАЧИ
FROM project p CROSS JOIN type_task tt LEFT JOIN task t ON (p.id = t.project_id) AND (tt.id = t.type_id)
GROUP BY p.name, tt.title
ORDER BY 1;

-- 33. Выбрать пары задач с одинаковым названием, но из разных проектов.
SELECT t1.project_id, t1.name, t2.project_id
FROM task t1 JOIN task t2 ON (t1.id < t2.id) AND (t1.name = t2.name) AND (t1.project_id <> t2.project_id);

--34. Выбрать тройки сотрудников, которые работают в одной и той же должности.
WITH e_vac AS ( --  получаем список их текущих вакансий
    SELECT e.id, v.id vacation_id
    FROM employee e JOIN pos_of_employee p ON (e.id = p.employee_id) JOIN vacation v ON (p.vacation_id = v.id)
    WHERE p.enddate IS NULL
)
SELECT e1.id, e2.id, e3.id, v.title
FROM  e_vac e1 JOIN e_vac e2 ON (e1.id < e2.id) JOIN e_vac e3 ON (e2.id < e3.id) JOIN vacation v ON (e1.vacation_id = v.id)
WHERE (e1.vacation_id = e2.vacation_id) AND (e2.vacation_id = e3.vacation_id)
ORDER BY v.title;


--35. Выбрать количество тезок однофамильцев среди сотрудников.
SELECT SUM(c)
FROM (SELECT surname, count(*) c
      FROM employee
      GROUP BY surname
      HAVING count(*) > 1);

-- 36. Выбрать краткое название и описание самого первого проекта.
SELECT shortname, description
FROM project p 
WHERE begindate = (SELECT MIN(begindate)
                   FROM project);
                                      
-- 37. Выбрать фамилию, имя, отчество самого молодого и самого старшего из сотрудников.
SELECT surname, name, middlename, date_of_birth
FROM employee
WHERE date_of_birth IN (SELECT min(date_of_birth) -- через OR на последнюю лабу 
                        FROM employee
                        UNION
                        SELECT max(date_of_birth)
                        FROM employee);

-- or
SELECT surname, name, middlename, date_of_birth
FROM employee
WHERE date_of_birth =  (SELECT min(date_of_birth) 
                        FROM employee)
    OR date_of_birth = (SELECT max(date_of_birth)
                        FROM employee);

-- 38. Выбрать фамилию, имя, отчество сотрудников и название должности актуальной на данный момент. 
-- Результат отсортировать по фамилии, имени, отчеству в лексикографическом порядке.
SELECT e.surname, e.name, e.middlename, v.title
FROM employee e JOIN pos_of_employee p ON (e.id = p.employee_id) 
                JOIN vacation v ON (p.vacation_id = v.id)
WHERE p.enddate IS NULL
ORDER BY 1, 2, 3;

-- 39. Выбрать название должности и фамилию и инициалы сотрудника принятого на эту должность последним.
SELECT v.title, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.'
FROM vacation v JOIN pos_of_employee p ON (v.id = p.vacation_id) 
                JOIN employee e ON (e.id = p.employee_id)
WHERE p.begindate = (SELECT MAX(begindate)
                     FROM pos_of_employee 
                     WHERE vacation_id = v.id);

-- 40. Выбрать названия проектов, в которых количество разработчиков превышает среднее количество разработчиков, работающих над проектом.
-- галочка другие варианты для оптимизации     
WITH count_e AS(
    SELECT p.name, count(DISTINCT e.employee_id) co
    FROM project p JOIN task t ON (p.id = t.project_id) JOIN employee_task e ON (e.task_id = t.id)
    GROUP BY p.name)
SELECT c.name
FROM count_e c
WHERE c.co > (SELECT avg(co)
              FROM count_e);                      

-- 41. Выбрать id, название и описание задач, для которых еще не назначены исполнители.
SELECT t.id, t.name, t.description
FROM task t
WHERE t.id NOT IN (SELECT DISTINCT task_id
                    FROM employee_task);
-- через exists !!! ИСПРАВЛЕНО

SELECT t.id, t.name, t.description
FROM task t
WHERE NOT EXISTS (SELECT DISTINCT task_id
                  FROM employee_task et
                  WHERE et.task_id = t.id);

-- 42. Выбрать сотрудника, который никогда не завершает задачи в срок. 
-- => у этого сотрудника нет вовремя выполненных задач и хотя бы одна не вовремя 
SELECT id, surname, name, middlename
FROM employee
WHERE EXISTS(SELECT t.id -- существует ли невыполненная задача?
             FROM task t JOIN employee_task e ON (e.task_id = t.id)
             WHERE ((t.factdate IS NULL AND (sysdate - t.planneddate) > 0) OR (t.factdate IS NOT NULL 
             AND (t.factdate - t.planneddate) > 0)) AND (e.employee_id = employee.id))
AND NOT EXISTS(SELECT t.id
             FROM task t JOIN employee_task e ON (e.task_id = t.id)
             WHERE (t.factdate IS NOT NULL AND (t.factdate - t.planneddate) <= 0) AND (e.employee_id = employee.id));
-- на последнюю лабу

SELECT DISTINCT id, surname, name, middlename
FROM employee e JOIN (SELECT DISTINCT e.employee_id -- существует ли невыполненная задача?
                      FROM task t JOIN employee_task e ON (e.task_id = t.id)
                      WHERE ((t.factdate IS NULL AND (sysdate - t.planneddate) > 0) OR (t.factdate IS NOT NULL 
                      AND (t.factdate - t.planneddate) > 0))) aa ON (e.id = aa.employee_id)
                      JOIN (SELECT e.id employee_id FROM employee e MINUS SELECT DISTINCT e.employee_id
                       FROM task t JOIN employee_task e ON (e.task_id = t.id)
                       WHERE (t.factdate IS NOT NULL AND (t.factdate - t.planneddate) <= 0)) bb ON (e.id = bb.employee_id)
                       ; 
--SELECT *
--FROM task t join employee_task e on (t.id = e.task_id)
--WHERE e.employee_id in (6, 7, 12, 18, 19, 23)

-- 43. Выбрать названия вакантных должностей, т.е. названия должностей, в которых никто не работает на данный момент. 
-- Результат отсортировать в лексикографическом порядке.
SELECT title
FROM vacation 
MINUS
SELECT DISTINCT title
FROM pos_of_employee p JOIN vacation v ON (p.vacation_id = v.id)
WHERE enddate IS NULL
ORDER BY 1;

-- через exists!!!!!! исправлено на посл лабу
SELECT title
FROM vacation v 
WHERE NOT EXISTS (SELECT v.id
                  FROM pos_of_employee p
                  WHERE p.vacation_id = v.id AND p.enddate IS NULL);

-- 44. Выбрать все данные о сотруднике(ах), который работал во всех проектах.
SELECT ee.id, ee.surname, ee.name, ee.middlename
FROM project p JOIN task t ON (t.project_id = p.id) 
               JOIN employee_task e ON (e.task_id = t.id) 
               JOIN employee ee ON (e.employee_id = ee.id)
GROUP BY ee.id, ee.surname, ee.name, ee.middlename
HAVING count(DISTINCT p.id) = (SELECT count(*) FROM project);

-- 45. Выбрать название проекта с наибольшим количеством незавершенных задач.
WITH findMax AS (
    SELECT p.id, count(t.id) c
    FROM project p JOIN task t ON (p.id = t.project_id)
    WHERE t.factdate IS NULL
    GROUP BY p.id
)
SELECT name
FROM project 
WHERE id in (SELECT id
             FROM findMax
             WHERE c = (SELECT MAX(c)
                        FROM findMax));      -- через неделю на лекции 
                    
WITH findMax AS (
    SELECT p.name, count(t.id) c
    FROM project p JOIN task t ON (p.id = t.project_id)
    WHERE t.factdate IS NULL
    GROUP BY p.id, p.name
    ORDER BY 2 DESC
)
SELECT name
FROM findMax
WHERE c = (SELECT max(c) 
            FROM findMax);

-- 46. Выбрать фамилию и инициалы сотрудника, завершившего вовремя наибольшее количество задач по проекту ИПС BOOK.         
WITH Emax AS (
    SELECT et.employee_id id, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.' Empl, count(t.id) c
    FROM project p JOIN task t ON (t.project_id = p.id) 
                   JOIN employee_task et ON (t.id = et.task_id)
                   JOIN employee e ON (e.id = et.employee_id)
    WHERE p.name = 'ИПС BOOK' AND (t.factdate - t.planneddate) <= 0
    GROUP BY et.employee_id, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.')
SELECT empl
FROM Emax
WHERE c = (SELECT MAX(c)
            FROM Emax);

-- 47.Выбрать все даты, которые есть в базе данных. Результат отсортировать в убывающем порядке.
SELECT begindate
FROM change_task
UNION 
SELECT date_of_birth
FROM employee
WHERE date_of_birth IS NOT NULL
UNION
SELECT begindate
FROM pos_of_employee
UNION
SELECT enddate
FROM pos_of_employee
WHERE enddate IS NOT NULL
UNION
SELECT begindate
FROM project
UNION
SELECT begindate
FROM task
UNION
SELECT planneddate
FROM task
UNION
SELECT factdate
FROM task
WHERE factdate IS NOT NULL
ORDER BY 1 desc;

-- 48. Выбрать пары сотрудников, которые работали хотя бы над двумя общими проектами.
WITH pp AS ( -- список сотрудников и их проектов 
    SELECT DISTINCT et.employee_id id, e.surname || ' ' || SUBSTR(e.name, 1, 1) || '.' || SUBSTR(e.middlename, 1, 1) || '.' Employee, p.id p_id
    FROM employee_task et JOIN task t ON (et.task_id = t.id) 
                          JOIN project p ON (t.project_id = p.id) 
                          JOIN employee e ON (et.employee_id = e.id))    
SELECT p1.id, p1.employee, p2.id, p2.employee, count(p1.p_id)
FROM pp p1 JOIN pp p2 ON (p1.id < p2.id) AND (p1.p_id = p2.p_id) 
GROUP BY p1.id, p1.employee, p2.id, p2.employee
HAVING count(p1.p_id) > 1
ORDER BY 1;

-- 49. Выбрать дату, которая чаще других встречается в базе данных.
WITH dates AS (
    SELECT begindate 
    FROM change_task
    UNION ALL
    SELECT date_of_birth
    FROM employee
    WHERE date_of_birth IS NOT NULL
    UNION ALL
    SELECT begindate
    FROM pos_of_employee
    UNION ALL
    SELECT enddate
    FROM pos_of_employee
    WHERE enddate IS NOT NULL
    UNION ALL
    SELECT begindate
    FROM project
    UNION ALL
    SELECT begindate
    FROM task
    UNION ALL
    SELECT planneddate
    FROM task
    UNION ALL
    SELECT factdate 
    FROM task
    WHERE factdate IS NOT NULL),
da AS (
    SELECT begindate, count(0) c
    FROM dates
    GROUP BY begindate
    ORDER BY 2 DESC)
SELECT begindate
FROM da
WHERE c = (SELECT MAX(C) FROM da);

-- 50.Выбрать все данные о незавершенных задачах, над которыми работают сотрудники, принявшие участие по крайней мере в 1/3 от всех проектов.
WITH pp AS (
    SELECT DISTINCT et.employee_id id, count(p.id) c -- сотрудник кол-во проектов
    FROM employee_task et JOIN task t ON et.task_id = t.id
                          JOIN project p ON t.project_id = p.id
                          JOIN employee e ON et.employee_id = e.id
    GROUP BY et.employee_id),
emp AS ( -- находим сотрудников  принявших участие по крайней мере в 1/3 от всех проектов
SELECT id
from pp
WHERE  c >= (1/3 * (SELECT count(0) FROM project)))
SELECT DISTINCT t.id, t.name, t.description, t.begindate, t.planneddate, tt.title type, pr.title priority, p.name project
FROM task t JOIN employee_task et ON t.id = et.task_id 
            JOIN emp ON emp.id = et.employee_id
            JOIN type_task tt ON t.type_id = tt.id
            JOIN project p ON p.id = t.project_id
            JOIN priority_task pr ON pr.id = t.priority_id
WHERE et.employee_id IN (SELECT * FROM emp) AND (t.factdate IS NULL);

-- 51.Выбрать все возможные цепочки смены статусов задач.
SELECT DISTINCT SYS_CONNECT_BY_PATH(curr_status_id, '->') AS Path
FROM hierarchy_status h
CONNECT BY h.curr_status_id = PRIOR  h.next_status_id
START WITH curr_status_id = 1;

-- 52.Выбрать самую длинную цепочку смены статусов задач.
WITH ch AS (
    SELECT LEVEL L, SYS_CONNECT_BY_PATH(curr_status_id, '->') AS Path
    FROM hierarchy_status h
    CONNECT BY h.curr_status_id = PRIOR  h.next_status_id
    START WITH curr_status_id = 1
)
SELECT Path
FROM ch
WHERE L = (SELECT MAX(L)
           FROM ch);

--53.Выбрать проект, количество решенных задач, процентное отношение решенных задач к общему количеству задач. на последнюю лабу 
WITH pr AS ( -- количество решенных задач у проекта
    SELECT p.id, count(t.id) done
    FROM project p JOIN task t ON t.project_id = p.id
    WHERE t.factdate IS NOT NULL
    GROUP BY p.id),
anyT AS ( -- количество всех задач у проекта
    SELECT p.id, count(t.id) task
    FROM project p JOIN task t ON t.project_id = p.id
    GROUP BY p.id)
SELECT p.id, NVL(pr.done, 0), FLOOR((nvl(pr.done, 0) / anyT.task) * 100) || '%'
FROM project p LEFT JOIN pr ON (p.id = pr.id) JOIN anyT ON (p.id = anyT.id)
ORDER BY 1;

-- 2 вариант
SELECT p.id, COUNT(CASE WHEN t.factdate IS NOT NULL THEN 1 ELSE NULL END) DoneTask,
             FLOOR(COUNT(CASE WHEN t.factdate IS NOT NULL THEN 1 ELSE NULL END) / COUNT(t.id) * 100) || '%' PercentT
FROM  project p JOIN task t ON p.id = t.project_id
GROUP BY p.id
ORDER BY 1;