CREATE TABLE project (
    id           NUMBER NOT NULL,
    name         VARCHAR2(30) NOT NULL,
    shortname    VARCHAR2(30) NOT NULL,
    description  VARCHAR2(100) NOT NULL,
    begindate    DATE NOT NULL,
    employee_id  NUMBER NOT NULL
);

ALTER TABLE project ADD CONSTRAINT project_pk PRIMARY KEY ( id );


CREATE TABLE task (
    id           NUMBER NOT NULL,
    name         VARCHAR2(30) NOT NULL,
    description  VARCHAR2(100) NOT NULL,
    begindate    DATE NOT NULL,
    planneddate  DATE NOT NULL,
    factdate     DATE,
    type_id      NUMBER NOT NULL,
    priority_id  NUMBER NOT NULL,
    project_id   NUMBER NOT NULL
);

ALTER TABLE task ADD CONSTRAINT task_ch CHECK ( begindate <= planneddate );
ALTER TABLE task ADD CONSTRAINT task_ch1 CHECK ( ( begindate <= factdate ) OR ( factdate IS NULL ) );
ALTER TABLE task ADD CONSTRAINT task_pk PRIMARY KEY ( id );


-- —мена статуса задани€
CREATE TABLE change_task (
    id         NUMBER NOT NULL,
    begindate  DATE NOT NULL,
    task_id    NUMBER NOT NULL,
    status_id  NUMBER NOT NULL
);

ALTER TABLE change_task ADD CONSTRAINT changetask_uniq UNIQUE( begindate, task_id, status_id );
ALTER TABLE change_task ADD CONSTRAINT changetask_pk PRIMARY KEY ( id );


CREATE TABLE employee (
    id           NUMBER NOT NULL,
    surname         VARCHAR2(20) NOT NULL,
    name      VARCHAR2(20) NOT NULL,
    middlename   VARCHAR2(25),
    date_of_birth  DATE
);

ALTER TABLE employee ADD CONSTRAINT employee_pk PRIMARY KEY ( id );


-- информаци€ о задаче - сотруднике
CREATE TABLE employee_task (
    id           NUMBER NOT NULL,
    employee_id  NUMBER NOT NULL,
    task_id      NUMBER NOT NULL,
    is_resp      CHAR(1) NOT NULL,	
    procent      NUMBER DEFAULT 100 NOT NULL
);

ALTER TABLE employee_task ADD CONSTRAINT employee_task_ch_proc CHECK ( procent BETWEEN 1 AND 100);
ALTER TABLE employee_task ADD CONSTRAINT employee_task_ch_bool CHECK ( is_resp IN ('y', 'n'));
ALTER TABLE employee_task ADD CONSTRAINT employee_task_uniq UNIQUE( employee_id, task_id );
ALTER TABLE employee_task ADD CONSTRAINT employee_task_pk PRIMARY KEY ( id );


-- кака€ задача должна быть выполнена, чтобы приступить к следующей
CREATE TABLE hierarchy_task (
    id        NUMBER NOT NULL,
    must_done_id  NUMBER NOT NULL,
    will_done_id  NUMBER NOT NULL
);

ALTER TABLE hierarchy_task ADD CONSTRAINT hierarchytask_uniq UNIQUE( must_done_id, will_done_id );
ALTER TABLE hierarchy_task ADD CONSTRAINT hierarchytask_pk PRIMARY KEY ( id );


-- список должностей
CREATE TABLE vacation (
    id     NUMBER NOT NULL,
    title  VARCHAR2(30) NOT NULL
);

ALTER TABLE vacation ADD CONSTRAINT vacation_uniq UNIQUE( title );
ALTER TABLE vacation ADD CONSTRAINT vacation_pk PRIMARY KEY ( id );


-- —писок должностей сотрудников
CREATE TABLE pos_of_employee (
    id           NUMBER NOT NULL,
    begindate    DATE NOT NULL,
    enddate      DATE,
    vacation_id  NUMBER NOT NULL,
    employee_id  NUMBER NOT NULL
);

ALTER TABLE pos_of_employee ADD CONSTRAINT posofemployee_ch CHECK ( (begindate < enddate) OR ( enddate IS NULL ) );
ALTER TABLE pos_of_employee ADD CONSTRAINT posofemployee_uniq UNIQUE( vacation_id, employee_id, begindate ); 
ALTER TABLE pos_of_employee ADD CONSTRAINT posofemployee_pk PRIMARY KEY ( id );


-- ¬ысокий - средний - низкий приоритет
CREATE TABLE priority_task (
    id     NUMBER NOT NULL,
    title  VARCHAR2(15) NOT NULL
);

ALTER TABLE priority_task ADD CONSTRAINT priority_uniq UNIQUE( title );
ALTER TABLE priority_task ADD CONSTRAINT priority_pk PRIMARY KEY ( id );


CREATE TABLE status (
    id     NUMBER NOT NULL,
    title  VARCHAR2(20) NOT NULL
);

ALTER TABLE status ADD CONSTRAINT status_uniq UNIQUE( title );
ALTER TABLE status ADD CONSTRAINT status_pk PRIMARY KEY ( id );


-- »з какого статуса в какой можно перейти
CREATE TABLE hierarchy_status (
	id        NUMBER NOT NULL,
    curr_status_id  NUMBER NOT NULL,
    next_status_id  NUMBER 
);

ALTER TABLE hierarchy_status ADD CONSTRAINT hierarchyst_uniq UNIQUE( curr_status_id, next_status_id );
ALTER TABLE hierarchy_status ADD CONSTRAINT hierarchyst_pk PRIMARY KEY ( id );


CREATE TABLE type_task (
    id     NUMBER NOT NULL,
    title  VARCHAR2(40) NOT NULL
);

ALTER TABLE type_task ADD CONSTRAINT type_uniq UNIQUE( title );
ALTER TABLE type_task ADD CONSTRAINT type_pk PRIMARY KEY ( id );


ALTER TABLE change_task
    ADD CONSTRAINT changetask_status_fk FOREIGN KEY ( status_id )
        REFERENCES status ( id );

ALTER TABLE change_task
    ADD CONSTRAINT changetask_task_fk FOREIGN KEY ( task_id )
        REFERENCES task ( id );

ALTER TABLE employee_task
    ADD CONSTRAINT employee_task_employee_fk FOREIGN KEY ( employee_id )
        REFERENCES employee ( id );

ALTER TABLE employee_task
    ADD CONSTRAINT employee_task_task_fk FOREIGN KEY ( task_id )
        REFERENCES task ( id );

ALTER TABLE hierarchy_task
    ADD CONSTRAINT hierarchytask_must_task_fk FOREIGN KEY ( must_done_id )
        REFERENCES task ( id );

ALTER TABLE hierarchy_task
    ADD CONSTRAINT hierarchytask_will_task_fk FOREIGN KEY ( will_done_id )
        REFERENCES task ( id );

ALTER TABLE hierarchy_status
    ADD CONSTRAINT hierarchyst_curr_status_fk FOREIGN KEY ( curr_status_id )
        REFERENCES status ( id );

ALTER TABLE hierarchy_status
    ADD CONSTRAINT hierarchyst_next_status_fk FOREIGN KEY ( next_status_id )
        REFERENCES status ( id );		
		
ALTER TABLE pos_of_employee
    ADD CONSTRAINT posofemployee_employee_fk FOREIGN KEY ( employee_id )
        REFERENCES employee ( id );

ALTER TABLE pos_of_employee
    ADD CONSTRAINT posofemployee_position_fk FOREIGN KEY ( vacation_id )
        REFERENCES vacation ( id );

ALTER TABLE project
    ADD CONSTRAINT project_employee_fk FOREIGN KEY ( employee_id )
        REFERENCES employee ( id );

ALTER TABLE task
    ADD CONSTRAINT task_priority_fk FOREIGN KEY ( priority_id )
        REFERENCES priority_task ( id );

ALTER TABLE task
    ADD CONSTRAINT task_project_fk FOREIGN KEY ( project_id )
        REFERENCES project ( id );

ALTER TABLE task
    ADD CONSTRAINT task_type_fk FOREIGN KEY ( type_id )
        REFERENCES type_task ( id );

		
CREATE SEQUENCE project_seq START WITH 0 MINVALUE 0 MAXVALUE 1000 NOCACHE ORDER;

CREATE SEQUENCE task_seq START WITH 0 MINVALUE 0 MAXVALUE 1000 NOCACHE ORDER;

CREATE SEQUENCE change_task_seq START WITH 0 MINVALUE 0 MAXVALUE 10000 NOCACHE ORDER;

CREATE SEQUENCE employee_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;

CREATE SEQUENCE employee_task_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;

CREATE SEQUENCE hierarchy_task_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;

CREATE SEQUENCE vacation_seq START WITH 0 MINVALUE 0 MAXVALUE 100 NOCACHE ORDER;

CREATE SEQUENCE pos_of_employee_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;

CREATE SEQUENCE priority_task_seq START WITH 0 MINVALUE 0 MAXVALUE 100 NOCACHE ORDER;

CREATE SEQUENCE status_seq START WITH 0 MINVALUE 0 MAXVALUE 100 NOCACHE ORDER;

CREATE SEQUENCE type_task_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;

CREATE SEQUENCE hierarchy_status_seq START WITH 0 MINVALUE 0 MAXVALUE 100000 NOCACHE ORDER;