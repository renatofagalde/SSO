drop table if exists role CASCADE;
drop table if exists user CASCADE;
-- drop sequence if exists hibernate_sequence;
-- create sequence hibernate_sequence start with 1 increment by 1;
create table role (
                      id bigint not null,
                      role varchar(255),
                      user_id bigint,
                      primary key (id)
);
create table user (
                      id bigint not null,
                      email varchar(255),
                      first_name varchar(255),
                      last_name varchar(255),
                      password varchar(255),
                      user_name varchar(255),
                      primary key (id)
);
alter table role
    add constraint fk_role_user_id
        foreign key (user_id) references user (id);

insert into user
(id, first_name, last_name, email, user_name, password)
values (1, 'renato', 'fagalde', 'renato@likwi.com.br', 'renato',
        '$2a$10$SsVAKgjkVBEb93WjNrapIuwaPZAS0qGDWwVQBKdupf6uKdoG.VLIq'), -- renato
       (2, 'aryton', 'senna', 'aryton@senna.com.br', 'senna',
        '$2a$10$JVfUB6Xjs7jx/2nDVRFWlO5YLhsTx13DP0Ob2ENVsGVjuXsSf2mku'); -- senna
insert into role
(id,role,user_id)
values (1,'student',1),
       (2,'professor',2),
       (3,'director',1);
