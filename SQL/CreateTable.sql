DROP TABLE IF EXISTS User;
DROP TABLE IF EXISTS SpiritGrowPlanProgress;
DROP TABLE IF EXISTS SpiritGrowPlan;
DROP TABLE IF EXISTS MemberServices;
DROP TABLE IF EXISTS Member;
DROP TABLE IF EXISTS Award;
DROP TABLE IF EXISTS Fellowship;
DROP TABLE IF EXISTS Services;
DROP TABLE IF EXISTS BibleStudyPlan;

CREATE TABLE User(
	UserID int NOT NULL AUTO_INCREMENT,
	UserName nvarchar(50) unique,
	Password nvarchar(50) NOT NULL,
	UserGroup int NOT NULL,
	Email nvarchar(50) NOT NULL,
	CONSTRAINT PK_User PRIMARY KEY (UserID)
);
    
CREATE TABLE Fellowship(
	FellowshipID int NOT NULL AUTO_INCREMENT,
	Name nvarchar(10) unique,
	CONSTRAINT PK_Member PRIMARY KEY (FellowshipID)
);
    
CREATE TABLE Member(
	MemberID int NOT NULL AUTO_INCREMENT,
	MemberName nvarchar(50) NOT NULL,
	Nickname nvarchar(50),
	Gender nvarchar(1),
	Fellowship int,
	Email nvarchar(50),
	Facebook nvarchar(50),
	Tel nvarchar(50),
	Mobile nvarchar(50),
	CONSTRAINT PK_Member PRIMARY KEY (MemberID),
	FOREIGN KEY FK_Member_Fellowship (Fellowship)
	REFERENCES Fellowship(FellowshipID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

CREATE TABLE BibleStudyPlan(
	BibleStudyPlanID int NOT NULL AUTO_INCREMENT,
  BibleStudyPlan nvarchar(10) unique,
  CONSTRAINT PK_BibleStudyPlan PRIMARY KEY (BibleStudyPlanID)
);

CREATE TABLE Award(
	AwardID int NOT NULL AUTO_INCREMENT,
    Award nvarchar(10) unique,
    CONSTRAINT PK_Award PRIMARY KEY (AwardID)
);

CREATE TABLE SpiritGrowPlan(
	MemberID int,
	Year int,
	BibleStudyPlanID int NOT NULL,
	BibleStudy2016 text,
	ChurchActivities text,
	Services text,
	AwardID int not null,
	Remarks text,
	FOREIGN KEY FK_SpiritGrowPlan2016_MemberID (MemberID)
	REFERENCES Member(MemberID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
    FOREIGN KEY FK_SpiritGrowPlan2016_BibleStudyPlan (BibleStudyPlanID)
	REFERENCES BibleStudyPlan(BibleStudyPlanID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
    FOREIGN KEY FK_SpiritGrowPlan2016_Award (AwardID)
	REFERENCES Award(AwardID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);
    
CREATE TABLE SpiritGrowPlanProgress(
	MemberID int,
	Year int,
	Month int,
	Pray int NOT NULL,
	BibleStudy text,
	Retreat int NOT NULL,
	FellowshipService bool NOT NULL,
	WorshipService bool NOT NULL,
	OtherService bool NOT NULL,
	WorshipTimes int NOT NULL,
	FellowshipTimes int NOT NULL,
	SundaySchoolTimes int NOT NULL,
	InviteFriendsTimes int NOT NULL,
	MissionaryTimes int NOT NULL,
	CONSTRAINT PK_SpiritGrowPlan2016Progress PRIMARY KEY (MemberID, Year, Month),
	FOREIGN KEY FK_SpiritGrowPlan2016Progress_MemberID (MemberID)
	REFERENCES Member(MemberID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);

CREATE TABLE Services(
	ServiceID int NOT NULL AUTO_INCREMENT,
	Service nvarchar(50) unique,
	CONSTRAINT PK_Services PRIMARY KEY (ServiceID)
);

CREATE TABLE MemberServices(
	MemberID int,
	Year int,
	ServiceID int,
	FOREIGN KEY FK_Services_MemberID (MemberID)
	REFERENCES Member(MemberID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT,
	FOREIGN KEY FK_Services_ServiceID (ServiceID)
	REFERENCES Services(ServiceID)
	ON UPDATE CASCADE
	ON DELETE RESTRICT
);