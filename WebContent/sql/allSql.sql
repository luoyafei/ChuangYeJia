create table user (
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
    userAddress varchar(20),
    userIp varchar(20),
    userRealName varchar(20),
    userRealPhoto varchar(255),
    userTel varchar(20) unique,
    userWeChat varchar(20) unique,
    isVerify varchar(1) default '0'
) ENGINE=InnoDB default charset=utf8


create table Startups (
    startupsId varchar(32) primary key,
    startupsLeaderId varchar(32),
    startupsAccount varchar(255),
    startupsAddress varchar(50),
    startupsBrief text,
    startupsCopartnerRequire varchar(30),
    startupsCover varchar(255),
    startupsCreateDate datetime default now(),
    startupsDetail text,
    startupsName varchar(20),
    startupsOperationStage varchar(20),
    startupsPassword varchar(32),
    startupsPhoto1 varchar(255),
    startupsPhoto2 varchar(255),
    startupsPhoto3 varchar(255),
    startupsServiceType varchar(10),
    startupsVideo varchar(255),
    constraint foreign key (startupsLeaderId) references User (userId)
) ENGINE=InnoDB default charset=utf8

    
create table startups_user (
    startupsId varchar(32) not null,
    userId varchar(32) not null,
    primary key(startupsId, userId),
    constraint foreign key (startupsId) references Startups (startupsId),
    constraint foreign key (userId) references User (userId)
) ENGINE=InnoDB default charset=utf8