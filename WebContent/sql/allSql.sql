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
    isVerify varchar(1) default '0',
    copartnerCategory varchar(10),
    startAbility text,
    userField varchar(10),
    introduceVideo varchar(255)
) ENGINE=InnoDB default charset=utf8

	private String copartnerCategory = null;//合伙人类型（资金，技术，推广，运营，其他）
	private String startAbility = null;//创业能力
	private String userField = null;
	//领域 (移动互联网，电子商务，文化艺术，教育体育，汽车，旅游户外，房产，营销广告，硬件，工具软件，企业服务，搜索安全，医疗健康，媒体资讯，生活消费，其他)
	private String userDirection = null;//方向
	//方向 	美术设计，软件开发，工业制造，化学化工，农业牧林	财务，法律，人事，推广，其他
	private String introduceVideo = null;//介绍视频



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