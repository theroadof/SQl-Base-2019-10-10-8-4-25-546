create table student(
	id varchar(5) not null,
    name varchar(10) default null,
    age int default null,
    sex varchar(10) default null,
    primary key(id)
);
create table subject(
	id varchar(5) not null,
    subject varchar(20) default null,
    teacher varchar(20) default null,
    description varchar(255) default null,
    primary key(id)
);
create table score(
	id int not null,
    student_id varchar(5),
    subject_id varchar(5),
    score NUMBER(4,1) default 0,
    primary key(id),
    foreign key(student_id) references student(id),
    foreign key(subject_id) references subject(id)
);

insert all 
    into student values ('001','zhangsan',18,'male')
    into student values ('002','lisi',20,'female')
    into subject values ('1001','Chinese','Mr.Wang','the exam is easy')
    into subject values ('1002','math','Miss Liu','the exam is diffcult')
    into score values (1,'001','1001',80)
    into score values (2,'002','1002',60)
    into score values (3,'001','1001',70)
    into score values (4,'002','1002',60.5)
select 1 from dual;
