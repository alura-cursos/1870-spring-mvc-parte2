create table users(
    username varchar(50) not null primary key,
    password varchar(200) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);
create unique index ix_auth_username on authorities (username,authority);

INSERT INTO `users` (`username`, `enabled`, `password`) VALUES
('joao',	CONV('1', 2, 10) + 0,	'$2a$10$nZUDUEl0JzVgQTnBQ2LqA.5RZsISczwKUIaBtJf.lK2VOVaQSaM0K');
INSERT INTO `users` (`username`, `enabled`, `password`) VALUES
('maria',	CONV('1', 2, 10) + 0,	'$2a$10$nB.vRNGDcqhNysz/Y5r7Ieln19QgQ.q/xOFlkQ./hkJC.bkKCUedq');
INSERT INTO `users` (`username`, `enabled`, `password`) VALUES
('admin',	CONV('1', 2, 10) + 0,	'$2a$10$QHEJzl29V4u84W8BjmL/R.WM/O4UBL2/9E/qbZn8iaO/5m7u1ryAC');

INSERT INTO `authorities` (`username`, `authority`) VALUES
('joao',	'ADM');
INSERT INTO `authorities` (`username`, `authority`) VALUES
('maria',	'ADM');
INSERT INTO `authorities` (`username`, `authority`) VALUES
('admin',	'ADM');