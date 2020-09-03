# Login-JSP
login to JSP with encryption, session and MVC.

Database of "login" and table of "users".

create databases login;

creata table(
id int(255) auto_increment not null,
U_user varchar(20) not null,
U_pass varchar(35)not null,
constraint pk_id primary key(id),
)ENGINE=InnoDB;


