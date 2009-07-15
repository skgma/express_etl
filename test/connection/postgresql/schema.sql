drop table people;
create table people (
  id int not null primary key,
  first_name character varying(255) not null,
  last_name character varying(255) not null,
  ssn character varying(64) not null
);

-- Needed for ActiveRecord
drop sequence people_id_seq;
create sequence people_id_seq;
SELECT nextval('people_id_seq');

drop table places;
create table places (
  id int not null primary key,
	address text,
	city character varying(255),
	state character varying(255),
	country character varying(2)
);

drop table person_dimension;
create table person_dimension (
  id int not null primary key,
  first_name character varying(50),
  last_name character varying(50),
  address character varying(100),
  city character varying(50),
  state character varying(50),
  zip_code character varying(20),
  effective_date timestamp without time zone,
  end_date timestamp without time zone,
  latest_version boolean not null
);

drop table truncate_test;
create table truncate_test (
	x character varying(4)
);
insert into truncate_test (x) values ('a');
insert into truncate_test (x) values ('b');
insert into truncate_test (x) values ('c');