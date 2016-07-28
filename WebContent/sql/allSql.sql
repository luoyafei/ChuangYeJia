create table User (
    userId varchar(32) primary key,
    userNickName varchar(20) not null,
    userEmail varchar(30) unique,
    userPassword varchar(20) not null,
    userGender varchar(2),
    userIdCard varchar(10),
    userIntroduce varchar(255),
    userBirthday datetime,
    userCreateDate datetime default now(),
    userPhoto varchar(255),
    userCity varchar(20),
    userProvince varchar(20),
    userRealName varchar(20),
    userRealPhoto varchar(255),
    userTel varchar(20) unique,
    userWeChat varchar(20) unique,
    isVerify varchar(1) default '0'
) ENGINE=InnoDB default charset=utf8
