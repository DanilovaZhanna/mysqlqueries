INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'БЕКАП');

-- Всевозможные должности 
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Frontend-разработчик');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Backend-разработчик');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Fullstack-разработчик');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Администратор БД');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Старший инженер'); -- 5
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Web-дизайнер');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Бизнес-аналитик');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Менеджер');
INSERT INTO vacation 
VALUES (vacation_seq.NEXTVAL, 'Data-scientist');

-- Все сотрудники
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Кузубова', 'Анастасия', 'Николаевна', TO_DATE('14.07.1996','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Быстров', 'Дмитрий', 'Матвеевич', TO_DATE('28.03.1997','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Ягодин', 'Виталий', 'Григориевич', TO_DATE('15.10.1998','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Муравьева', 'Ирина', 'Александровна', TO_DATE('26.02.1997','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Ягодин', 'Владислав', 'Андреевич', TO_DATE('20.07.1998','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Митрохина', 'Анастасия', 'Глебовна', TO_DATE('07.10.1997','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Сидорова', 'Инна', 'Сергеевна', TO_DATE('11.08.1974','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Висенина', 'Мария', 'Георгиевна', TO_DATE('02.04.1998','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Уголева', 'Оксана', 'Денисовна', TO_DATE('15.11.1987','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Родзянко', 'Ирина', 'Серафимовна', TO_DATE('07.05.1986','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Лепихов', 'Владислав', 'Михаилович', TO_DATE('19.03.1994','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Висенина', 'Мария', 'Александровна', TO_DATE('26.05.1997','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Кадетова', 'Ирина', 'Александровна', TO_DATE('17.02.1978','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Федулов', 'Станислав', 'Яковович', NULL);
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Комолов', 'Игорь', 'Матвеевич', TO_DATE('20.03.1987','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Коломийцева', 'Инна', 'Геннадиевна', TO_DATE('08.09.1999','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Чернаков', 'Игорь', 'Глебович', TO_DATE('15.05.1982','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Федулов', 'Владислав', 'Матвеевич', TO_DATE('08.10.1981','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Федулов', 'Игорь', 'Матвеевич', TO_DATE('17.07.1971','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Мышкин', 'Константин', 'Вадимович', NULL);
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Чернаков', 'Игорь', 'Филиппович', TO_DATE('17.03.1980','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Черниенко', 'Дмитрий', 'Матвеевич', TO_DATE('21.04.1989','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Кузубова', 'Александра', 'Николаевна', TO_DATE('21.08.1976','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Набалкин', 'Виталий', 'Глебович', TO_DATE('02.06.1984','DD.MM.YYYY'));
INSERT INTO employee
VALUES (employee_SEQ.NEXTVAL, 'Поветникова', 'Оксана', 'Александровна', TO_DATE('10.03.1983','DD.MM.YYYY'));

-- Должности сотрудников, дата вступления, дата окончания
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('02.03.2014','DD.MM.YYYY'), TO_DATE('14.04.2017','DD.MM.YYYY'), 9, 1);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('14.04.2017','DD.MM.YYYY'), NULL, 7, 1);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('11.04.2012','DD.MM.YYYY'), TO_DATE('21.04.2017','DD.MM.YYYY'), 2, 2);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('21.04.2017','DD.MM.YYYY'), TO_DATE('09.10.2019','DD.MM.YYYY'), 8, 2);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('09.10.2019','DD.MM.YYYY'), NULL, 5, 2);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('22.02.2012','DD.MM.YYYY'), TO_DATE('25.09.2015','DD.MM.YYYY'), 8, 3);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('25.09.2015','DD.MM.YYYY'), TO_DATE('03.04.2018','DD.MM.YYYY'), 9, 3);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('03.04.2018','DD.MM.YYYY'), TO_DATE('02.09.2019','DD.MM.YYYY'), 7, 3);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('02.09.2019','DD.MM.YYYY'), NULL, 8, 3);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('12.05.2013','DD.MM.YYYY'), NULL, 8, 4);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('18.08.2014','DD.MM.YYYY'), NULL, 4, 5);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('09.08.2014','DD.MM.YYYY'), NULL, 7, 6);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('15.06.2012','DD.MM.YYYY'), TO_DATE('03.06.2014','DD.MM.YYYY'), 5, 7);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('03.06.2014','DD.MM.YYYY'), NULL, 5, 7);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('28.01.2012','DD.MM.YYYY'), TO_DATE('14.07.2019','DD.MM.YYYY'), 8, 8);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('14.07.2019','DD.MM.YYYY'), NULL, 2, 8);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('17.09.2014','DD.MM.YYYY'), NULL, 2, 9);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('12.03.2012','DD.MM.YYYY'), TO_DATE('01.03.2014','DD.MM.YYYY'), 3, 10);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('01.03.2014','DD.MM.YYYY'), TO_DATE('26.03.2019','DD.MM.YYYY'), 7, 10);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('26.03.2019','DD.MM.YYYY'), NULL, 1, 10);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('05.10.2012','DD.MM.YYYY'), TO_DATE('02.05.2016','DD.MM.YYYY'), 8, 11);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('02.05.2016','DD.MM.YYYY'), TO_DATE('11.06.2019','DD.MM.YYYY'), 3, 11);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('11.06.2019','DD.MM.YYYY'), NULL, 1, 11);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('13.06.2014','DD.MM.YYYY'), NULL, 8, 12);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('06.05.2012','DD.MM.YYYY'), TO_DATE('21.11.2017','DD.MM.YYYY'), 6, 13);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('21.11.2017','DD.MM.YYYY'), NULL, 4, 13);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('27.11.2014','DD.MM.YYYY'), TO_DATE('14.04.2015','DD.MM.YYYY'), 8, 14);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('14.04.2015','DD.MM.YYYY'), NULL, 7, 14);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('08.01.2013','DD.MM.YYYY'), TO_DATE('08.06.2015','DD.MM.YYYY'), 3, 15);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('08.06.2015','DD.MM.YYYY'), NULL, 3, 15);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('17.02.2013','DD.MM.YYYY'), NULL, 8, 16);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('24.06.2012','DD.MM.YYYY'), NULL, 5, 17);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('07.06.2012','DD.MM.YYYY'), TO_DATE('16.06.2016','DD.MM.YYYY'), 9, 18);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('16.06.2016','DD.MM.YYYY'), NULL, 6, 18);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('28.05.2012','DD.MM.YYYY'), TO_DATE('24.03.2015','DD.MM.YYYY'), 8, 19);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('24.03.2015','DD.MM.YYYY'), TO_DATE('17.11.2016','DD.MM.YYYY'), 6, 19);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('17.11.2016','DD.MM.YYYY'), TO_DATE('17.07.2018','DD.MM.YYYY'), 2, 19);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('17.07.2018','DD.MM.YYYY'), NULL, 6, 19);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('22.02.2014','DD.MM.YYYY'), TO_DATE('24.11.2017','DD.MM.YYYY'), 1, 20);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('24.11.2017','DD.MM.YYYY'), NULL, 3, 20);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('08.10.2013','DD.MM.YYYY'), TO_DATE('14.01.2014','DD.MM.YYYY'), 7, 21);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('14.01.2014','DD.MM.YYYY'), NULL, 1, 21);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('29.05.2014','DD.MM.YYYY'), NULL, 5, 22);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('13.02.2014','DD.MM.YYYY'), TO_DATE('12.04.2019','DD.MM.YYYY'), 5, 23);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('12.04.2019','DD.MM.YYYY'), NULL, 7, 23);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('24.05.2013','DD.MM.YYYY'), TO_DATE('16.09.2015','DD.MM.YYYY'), 8, 24);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('16.09.2015','DD.MM.YYYY'), TO_DATE('21.04.2017','DD.MM.YYYY'), 7, 24);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('21.04.2017','DD.MM.YYYY'), NULL, 3, 24);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('26.01.2012','DD.MM.YYYY'), TO_DATE('11.11.2013','DD.MM.YYYY'), 9, 25);
INSERT INTO pos_of_employee
VALUES (pos_of_employee_SEQ.NEXTVAL, TO_DATE('11.11.2013','DD.MM.YYYY'), NULL, 7, 25);

-- Типы различных задач
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Работа с Базами Данных');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'WEB-разработка');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'JAVA-разработка');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Поддержка');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Big Data'); 
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'SMM');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Аналитика');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Дизайн');
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Тестирование'); 
INSERT INTO type_task
VALUES (type_task_seq.NEXTVAL, 'Мобильная разработка'); -- 10

-- Приоритеты задач
INSERT INTO priority_task
VALUES (priority_task_seq.NEXTVAL, 'Высокий');
INSERT INTO priority_task
VALUES (priority_task_seq.NEXTVAL, 'Средний');
INSERT INTO priority_task
VALUES (priority_task_seq.NEXTVAL, 'Низкий');

-- Статус задач
INSERT INTO status
VALUES (status_seq.NEXTVAL, 'Открыта');
INSERT INTO status
VALUES (status_seq.NEXTVAL, 'Реализуется');
INSERT INTO status
VALUES (status_seq.NEXTVAL, 'Тестируется');
INSERT INTO status
VALUES (status_seq.NEXTVAL, 'Исправляется');
INSERT INTO status
VALUES (status_seq.NEXTVAL, 'Закончена');


INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 1, 2); -- открыта -> реализуется
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 2, 3); -- реализуется -> тестируется
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 2, 5); -- для мини-задач можно с реализации сразу завершить 
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 3, 4);
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 3, 5); -- задача может не нуждаться в исправлении
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 4, 5);
INSERT INTO hierarchy_status
VALUES (hierarchy_status_seq.NEXTVAL, 5,Null);


-- Проекты + под ними для каждого проекта задачи проекта + под ними изменения их статусов и список сотрудников над которыми работали 
INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'DELIVERY CLUB', 'Delivery', 'Доставка еды по всей стране, моб приложение редизайн', TO_DATE('01.04.2015', 'DD.MM.YYYY'), 17);
    
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Создание ТЗ', 'Аналитика поставленной задачи', TO_DATE('01.04.2015', 'DD.MM.YYYY'), TO_DATE('17.04.2015', 'DD.MM.YYYY'), 
    TO_DATE('23.04.2015', 'DD.MM.YYYY'), 7,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('07.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('21.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('23.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'y', default);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Обсужд. проекта', 'Просим скидки на доставку', TO_DATE('01.04.2015', 'DD.MM.YYYY'), 
    TO_DATE('04.04.2015', 'DD.MM.YYYY'), TO_DATE('03.04.2015', 'DD.MM.YYYY'), 5,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('03.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 3, task_seq.CURRVAL, 'y', 60);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 20, task_seq.CURRVAL, 'n', 40);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Новый дизайн', 'Обновляем дизайн приложения', TO_DATE('23.04.2015', 'DD.MM.YYYY'), 
    TO_DATE('30.05.2015', 'DD.MM.YYYY'), TO_DATE('29.05.2015', 'DD.MM.YYYY'), 8,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('23.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('30.04.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('07.05.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('22.05.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('29.05.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 17, task_seq.CURRVAL, 'y', 10);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 2, task_seq.CURRVAL, 'n', 90);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Android приложение', 'Обновляем приложение под андроид', TO_DATE('05.05.2015', 'DD.MM.YYYY'), 
    TO_DATE('28.12.2015', 'DD.MM.YYYY'), TO_DATE('01.02.2016', 'DD.MM.YYYY'), 10,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('05.05.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('30.05.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('28.11.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('22.12.2015', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.02.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 17, task_seq.CURRVAL, 'y', 40);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 2, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'n', 10);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 10);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 23, task_seq.CURRVAL, 'n', 20);

    INSERT INTO hierarchy_task
    VALUES (hierarchy_task_seq.NEXTVAL, 2, 4);
    INSERT INTO hierarchy_task
    VALUES (hierarchy_task_seq.NEXTVAL, 3, 4);

INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'TAXI PORT', 'Taxi', 'СОздание WEB-приложения', TO_DATE('10.01.2016', 'DD.MM.YYYY'), 2);
    
    INSERT INTO Task -- 5 task
    VALUES (Task_seq.NEXTVAL, 'Создание ТЗ', 'Аналитика поставленной задачи', TO_DATE('10.01.2016', 'DD.MM.YYYY'), 
    TO_DATE('17.02.2016', 'DD.MM.YYYY'), TO_DATE('16.02.2016', 'DD.MM.YYYY'), 7,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.01.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('17.01.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.02.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('16.02.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 11, task_seq.CURRVAL, 'y', default);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Сбор данных, анализ рынка', 'Анализируем потребности клиентов', TO_DATE('20.02.2016', 'DD.MM.YYYY'), 
    TO_DATE('16.04.2016', 'DD.MM.YYYY'), TO_DATE('16.04.2016', 'DD.MM.YYYY'), 5,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.02.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('17.03.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.04.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('14.04.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('16.04.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 11, task_seq.CURRVAL, 'y', 70);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'n', 30);

    INSERT INTO Task -- 7 task
    VALUES (Task_seq.NEXTVAL, 'Проектирование модели БД', 'ПМД', TO_DATE('20.05.2016', 'DD.MM.YYYY'), 
    TO_DATE('16.06.2016', 'DD.MM.YYYY'), TO_DATE('11.06.2016', 'DD.MM.YYYY'), 5,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.05.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('27.05.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('03.06.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.06.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.06.2016', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 3, task_seq.CURRVAL, 'y', 70);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 15);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 24, task_seq.CURRVAL, 'n', 15);

    INSERT INTO hierarchy_task
    VALUES (hierarchy_task_seq.NEXTVAL, 5, 6);
    INSERT INTO hierarchy_task
    VALUES (hierarchy_task_seq.NEXTVAL, 6, 7);

INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'AVIASALES', 'Авиа', 'Для ПО требуется спроектировать БД',  TO_DATE('10.01.2017', 'DD.MM.YYYY'), 11);
	
    INSERT INTO Task -- 8 task
    VALUES (Task_seq.NEXTVAL, 'Сбор информации', 'Собрать информацию об устройстве авиакомпании', TO_DATE('10.01.2017', 'DD.MM.YYYY'), 
    TO_DATE('12.02.2017', 'DD.MM.YYYY'), TO_DATE('20.02.2017', 'DD.MM.YYYY'), 1, 2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.01.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.01.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.01.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.02.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 11, task_seq.CURRVAL, 'y', 77);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'n', 23);

    INSERT INTO Task -- 9 task
    VALUES (Task_seq.NEXTVAL, 'Проектирование БД', 'Данные обо всех авиаперелетах', TO_DATE('25.02.2017', 'DD.MM.YYYY'), 
    TO_DATE('15.03.2017', 'DD.MM.YYYY'), TO_DATE('12.03.2017', 'DD.MM.YYYY'), 1, 2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('25.02.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('28.02.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('02.03.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.03.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 11, task_seq.CURRVAL, 'y', 50);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 10, task_seq.CURRVAL, 'n', 50);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Поддержка', '-', TO_DATE('28.02.2017', 'DD.MM.YYYY'), TO_DATE('28.02.2019', 'DD.MM.YYYY'), 
    TO_DATE('28.02.2019', 'DD.MM.YYYY'), 4, 3, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('28.02.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.03.2017', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('28.02.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'y', default);

    INSERT INTO hierarchy_task
    VALUES (hierarchy_task_seq.NEXTVAL, 8, 9);

INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'ИПС BOOK', 'ИПС BOOK', 'Онлайн-библиотека', TO_DATE('11.08.2018', 'DD.MM.YYYY'), 6);
    
    INSERT INTO Task -- 11 task
    VALUES (Task_seq.NEXTVAL, 'Создание ТЗ', 'Аналитика поставленной задачи', TO_DATE('11.08.2018', 'DD.MM.YYYY'), 
    TO_DATE('11.09.2018', 'DD.MM.YYYY'), TO_DATE('20.09.2018', 'DD.MM.YYYY'), 7,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.08.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('13.08.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.09.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.09.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 19, task_seq.CURRVAL, 'y', 50);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 20, task_seq.CURRVAL, 'n', 25);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'n', 25);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Аналитика пользователей', 'Сбор данных об интересах целевой аудитории', TO_DATE('21.08.2018', 'DD.MM.YYYY'), 
    TO_DATE('21.09.2018', 'DD.MM.YYYY'), TO_DATE('30.09.2018', 'DD.MM.YYYY'), 1,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('21.08.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('22.08.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('21.09.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('30.09.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 19, task_seq.CURRVAL, 'y', 50);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 20, task_seq.CURRVAL, 'n', 20);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 18, task_seq.CURRVAL, 'n', 20);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 12, task_seq.CURRVAL, 'n', 10);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Проектирование модели БД', 'ПМД', TO_DATE('10.10.2018', 'DD.MM.YYYY'), 
    TO_DATE('11.11.2018', 'DD.MM.YYYY'), TO_DATE('11.11.2018', 'DD.MM.YYYY'), 2,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.10.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('23.10.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('31.10.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.11.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.11.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 13, task_seq.CURRVAL, 'y', 85);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'n', 10);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 2, task_seq.CURRVAL, 'n', 5);   

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'UI/UX дизайн WEB', 'Создание дизайна', TO_DATE('01.12.2018', 'DD.MM.YYYY'), 
    TO_DATE('31.12.2018', 'DD.MM.YYYY'), TO_DATE('16.01.2019', 'DD.MM.YYYY'), 8,  1, Project_seq.CURRVAL);
    
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('23.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('31.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.01.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('16.01.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 5, task_seq.CURRVAL, 'y', 85);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 6, task_seq.CURRVAL, 'n', 10);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'n', 5);  

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'UI/UX дизайн Mobile', 'Создание дизайна mob', TO_DATE('01.12.2018', 'DD.MM.YYYY'), 
    TO_DATE('20.12.2018', 'DD.MM.YYYY'), TO_DATE('16.12.2018', 'DD.MM.YYYY'), 5,  1, Project_seq.CURRVAL);
    
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('02.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('16.12.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 5, task_seq.CURRVAL, 'y', 75);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 5);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 16, task_seq.CURRVAL, 'n', 10);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 22, task_seq.CURRVAL, 'n', 10);  

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Разработка Web-приложения', '-', TO_DATE('15.04.2019', 'DD.MM.YYYY'), 
    TO_DATE('30.01.2020', 'DD.MM.YYYY'), NULL, 8,  2, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('15.04.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('30.04.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 12, task_seq.CURRVAL, 'y', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 20, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 17, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 16, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'n', 20);
    
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Разработка Mobile-приложения', '-', TO_DATE('15.01.2019', 'DD.MM.YYYY'), 
    TO_DATE('15.10.2019', 'DD.MM.YYYY'), TO_DATE('12.10.2019', 'DD.MM.YYYY'), 3,  1, Project_seq.CURRVAL);
    
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('15.01.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.01.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.09.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('10.10.2018', 'DD.MM.YYYY'), task_seq.CURRVAL, 4);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('12.10.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 5, task_seq.CURRVAL, 'y', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 13, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 3, task_seq.CURRVAL, 'n', 5);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 4, task_seq.CURRVAL, 'n', 5);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 1, task_seq.CURRVAL, 'n', 5);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'n', 5);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 16, task_seq.CURRVAL, 'n', 10);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 22, task_seq.CURRVAL, 'n', 10);  
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 2, task_seq.CURRVAL, 'n', 5);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 9, task_seq.CURRVAL, 'n', 5);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 8, task_seq.CURRVAL, 'n', 5);        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 5);


    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Поддержка', 'Поддержка онлайн сервиса', TO_DATE('11.11.2019', 'DD.MM.YYYY'), 
    TO_DATE('30.12.2027', 'DD.MM.YYYY'), NULL, 4,  3, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.11.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.11.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 5, task_seq.CURRVAL, 'y', 80);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 13, task_seq.CURRVAL, 'n', 20);
        
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Важная задача', 'Решаем важную задачу', TO_DATE('05.07.2019', 'DD.MM.YYYY'), 
    TO_DATE('30.12.2020', 'DD.MM.YYYY'), NULL, 2,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('05.07.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.07.2019', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);

        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 15, task_seq.CURRVAL, 'y', 80);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 23, task_seq.CURRVAL, 'n', 20);
        
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Очень важная задача', 'Решаем важную задачу', TO_DATE('05.07.2019', 'DD.MM.YYYY'), 
    TO_DATE('30.12.2020', 'DD.MM.YYYY'), NULL, 2,  1, 4);
    
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Супер важная задача', 'Решаем важную задачу', TO_DATE('05.07.2019', 'DD.MM.YYYY'), 
    TO_DATE('30.12.2020', 'DD.MM.YYYY'), NULL, 2,  1, 4);

    
INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'SWIMMING VRN', 'Бассейн в Врн', 'Мобилка свим пул%%', TO_DATE('11.02.2020', 'DD.MM.YYYY'), 6);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Создание ТЗ', 'Аналитика поставленной задачи', TO_DATE('11.02.2020', 'DD.MM.YYYY'), 
    TO_DATE('11.03.2020', 'DD.MM.YYYY'), TO_DATE('15.03.2020', 'DD.MM.YYYY'), 1,  3, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.02.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('01.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('11.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 3);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('15.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 5);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 6, task_seq.CURRVAL, 'y', 80);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 23, task_seq.CURRVAL, 'n', 20);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Дизайн UI UX', 'Создание дизайна моб приложения', TO_DATE('16.03.2020', 'DD.MM.YYYY'), 
    TO_DATE('16.04.2020', 'DD.MM.YYYY'), NULL, 8,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('16.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('17.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 1, task_seq.CURRVAL, 'y', 30);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 2, task_seq.CURRVAL, 'n', 70);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Создание БД', 'Базы данных', TO_DATE('17.03.2020', 'DD.MM.YYYY'), 
    TO_DATE('17.04.2020', 'DD.MM.YYYY'), NULL, 1,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('17.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('18.04.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 2);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 21, task_seq.CURRVAL, 'y', 30);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 22, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 17, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 8, task_seq.CURRVAL, 'n', 30);
        
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Python - Разработка', 'PYTHON', TO_DATE('20.03.2020', 'DD.MM.YYYY'), 
    TO_DATE('17.05.2020', 'DD.MM.YYYY'), NULL, 5,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('20.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 11, task_seq.CURRVAL, 'y', 30);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'n', 20);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 18, task_seq.CURRVAL, 'n', 30);    


INSERT INTO Project 
VALUES (Project_seq.NEXTVAL, 'EASY LEARN', 'Изи лерн', 'Обучающий портал №1', TO_DATE('21.03.2020', 'DD.MM.YYYY'), 21);
    
    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Создание ТЗ', 'ТЗ ТЗ ТЗ', TO_DATE('21.03.2020', 'DD.MM.YYYY'), 
    TO_DATE('10.04.2020', 'DD.MM.YYYY'), NULL, 5,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('21.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 7, task_seq.CURRVAL, 'y', 80);
        INSERT INTO employee_task 
        VALUES (employee_task_seq.NEXTVAL, 25, task_seq.CURRVAL, 'n', 20);

    INSERT INTO Task 
    VALUES (Task_seq.NEXTVAL, 'Создание БД', 'БД БД БД БД', TO_DATE('21.03.2020', 'DD.MM.YYYY'), 
    TO_DATE('14.04.2020', 'DD.MM.YYYY'), NULL, 5,  1, Project_seq.CURRVAL);

        INSERT INTO change_task
        VALUES (change_task_seq.NEXTVAL, TO_DATE('21.03.2020', 'DD.MM.YYYY'), task_seq.CURRVAL, 1);
        
           