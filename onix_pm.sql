-- onix_pm.dbo.O_ACCESS_TYPE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_ACCESS_TYPE;

CREATE TABLE O_ACCESS_TYPE (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	ACCESS_TYPE_ID int NOT NULL,
	CONSTRAINT PK__O_ACCESS_TYPE__597B3B93 PRIMARY KEY (ACCESS_TYPE_ID)
);


-- onix_pm.dbo.O_COLUMN_TYPE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COLUMN_TYPE;

CREATE TABLE O_COLUMN_TYPE (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	COLUMN_TYPE_ID int NOT NULL,
	CONSTRAINT PK__O_COLUMN_TYPE__08211BE3 PRIMARY KEY (COLUMN_TYPE_ID)
);


-- onix_pm.dbo.O_COMPANY_ROLE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COMPANY_ROLE;

CREATE TABLE O_COMPANY_ROLE (
	NAME varchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	COMPANY_ROLE_ID int NOT NULL,
	CONSTRAINT PK__O_COMPANY_ROLE__0FC23DAB PRIMARY KEY (COMPANY_ROLE_ID)
);


-- onix_pm.dbo.O_CURRENCY definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_CURRENCY;

CREATE TABLE O_CURRENCY (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	RATE money NOT NULL,
	CURRENCY_ID int NOT NULL,
	CURRENCY_CODE varchar(3) COLLATE Cyrillic_General_CI_AS NULL,
	CURRENCY_TITLE varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__O_CURRENCY__0DD9F539 PRIMARY KEY (CURRENCY_ID)
);


-- onix_pm.dbo.O_ORDERS_STATUS definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_ORDERS_STATUS;

CREATE TABLE O_ORDERS_STATUS (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	ORDERS_STATUS_ID int NOT NULL,
	CONSTRAINT PK__O_ORDERS_STATUS__3BA0BFE9 PRIMARY KEY (ORDERS_STATUS_ID)
);


-- onix_pm.dbo.O_ORDER_STATUS definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_ORDER_STATUS;

CREATE TABLE O_ORDER_STATUS (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	ORDER_STATUS_ID int NOT NULL,
	CONSTRAINT PK__O_ORDER_STATUS__2B354DF6 PRIMARY KEY (ORDER_STATUS_ID)
);


-- onix_pm.dbo.O_PICTURE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_PICTURE;

CREATE TABLE O_PICTURE (
	[PATH] varchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	PICTURE_ID int NOT NULL,
	WIDTH int NOT NULL,
	HEIGHT int NOT NULL,
	CONSTRAINT PK__O_PICTURE__40106F4B PRIMARY KEY (PICTURE_ID)
);


-- onix_pm.dbo.O_USER_ROLE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_USER_ROLE;

CREATE TABLE O_USER_ROLE (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	USER_ROLE_ID int NOT NULL,
	CONSTRAINT PK__O_USER_ROLE__0BF1ACC7 PRIMARY KEY (USER_ROLE_ID)
);


-- onix_pm.dbo.aspnet_Applications definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Applications;

CREATE TABLE aspnet_Applications (
	ApplicationName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	LoweredApplicationName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	ApplicationId uniqueidentifier DEFAULT newid() NOT NULL,
	Description nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__aspnet_Applicati__618671AF PRIMARY KEY (ApplicationId),
	CONSTRAINT UQ__aspnet_Applicati__627A95E8 UNIQUE (LoweredApplicationName),
	CONSTRAINT UQ__aspnet_Applicati__636EBA21 UNIQUE (ApplicationName)
);
 CREATE CLUSTERED INDEX aspnet_Applications_Index ON dbo.aspnet_Applications (  LoweredApplicationName ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_SchemaVersions definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_SchemaVersions;

CREATE TABLE aspnet_SchemaVersions (
	Feature nvarchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CompatibleSchemaVersion nvarchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	IsCurrentVersion bit NOT NULL,
	CONSTRAINT PK__aspnet_SchemaVer__6C040022 PRIMARY KEY (Feature,CompatibleSchemaVersion)
);


-- onix_pm.dbo.aspnet_WebEvent_Events definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_WebEvent_Events;

CREATE TABLE aspnet_WebEvent_Events (
	EventId char(32) COLLATE Cyrillic_General_CI_AS NOT NULL,
	EventTimeUtc datetime NOT NULL,
	EventTime datetime NOT NULL,
	EventType nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	EventSequence decimal(19,0) NOT NULL,
	EventOccurrence decimal(19,0) NOT NULL,
	EventCode int NOT NULL,
	EventDetailCode int NOT NULL,
	Message nvarchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	ApplicationPath nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	ApplicationVirtualPath nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	MachineName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	RequestUrl nvarchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	ExceptionType nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	Details ntext COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__aspnet_WebEvent___42CCE065 PRIMARY KEY (EventId)
);


-- onix_pm.dbo.attrib_data_types definition

-- Drop table

-- DROP TABLE onix_pm.dbo.attrib_data_types;

CREATE TABLE attrib_data_types (
	id int NOT NULL,
	name varchar(16) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_attrib_data_types PRIMARY KEY (id)
);


-- onix_pm.dbo.attrib_types definition

-- Drop table

-- DROP TABLE onix_pm.dbo.attrib_types;

CREATE TABLE attrib_types (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_attrib_types PRIMARY KEY (id)
);


-- onix_pm.dbo.dtproperties definition

-- Drop table

-- DROP TABLE onix_pm.dbo.dtproperties;

CREATE TABLE dtproperties (
	id int IDENTITY(1,1) NOT NULL,
	objectid int NULL,
	property varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	value varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
	uvalue nvarchar(255) COLLATE Cyrillic_General_CI_AS NULL,
	lvalue image NULL,
	version int DEFAULT 0 NOT NULL,
	CONSTRAINT pk_dtproperties PRIMARY KEY (id,property)
);


-- onix_pm.dbo.file_types definition

-- Drop table

-- DROP TABLE onix_pm.dbo.file_types;

CREATE TABLE file_types (
	id varchar(4) COLLATE Cyrillic_General_CI_AS NOT NULL,
	icon_url varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	icon_wid int NULL,
	icon_hei int NULL,
	CONSTRAINT PK_file_types PRIMARY KEY (id)
);


-- onix_pm.dbo.letter_templates definition

-- Drop table

-- DROP TABLE onix_pm.dbo.letter_templates;

CREATE TABLE letter_templates (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	subject varchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	html_body ntext COLLATE Cyrillic_General_CI_AS NULL,
	attach1 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	attach2 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	attach3 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_letter_templates PRIMARY KEY (id)
);


-- onix_pm.dbo.log_change definition

-- Drop table

-- DROP TABLE onix_pm.dbo.log_change;

CREATE TABLE log_change (
	id int NOT NULL,
	schemaname varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	change_type varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	event_time datetime NULL,
	uid varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	os_uid varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	computer_name varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	data1 text COLLATE Cyrillic_General_CI_AS NULL,
	data2 text COLLATE Cyrillic_General_CI_AS NULL
);


-- onix_pm.dbo.log_sys definition

-- Drop table

-- DROP TABLE onix_pm.dbo.log_sys;

CREATE TABLE log_sys (
	id int NOT NULL,
	category varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	subcategory varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	event_type int NOT NULL,
	event_time datetime NOT NULL,
	uid varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	computer_name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	os_uid varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	info varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	[data] text COLLATE Cyrillic_General_CI_AS NULL
);


-- onix_pm.dbo.measures definition

-- Drop table

-- DROP TABLE onix_pm.dbo.measures;

CREATE TABLE measures (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_measures PRIMARY KEY (id)
);


-- onix_pm.dbo.news definition

-- Drop table

-- DROP TABLE onix_pm.dbo.news;

CREATE TABLE news (
	id int NOT NULL,
	status int NOT NULL,
	news_date datetime NULL,
	title varchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	short_content text COLLATE Cyrillic_General_CI_AS NULL,
	content text COLLATE Cyrillic_General_CI_AS NULL,
	src_name varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	src_url varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_news PRIMARY KEY (id)
);


-- onix_pm.dbo.o_availability definition

-- Drop table

-- DROP TABLE onix_pm.dbo.o_availability;

CREATE TABLE o_availability (
	ID_availability int NOT NULL,
	name varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_o_availability PRIMARY KEY (ID_availability)
);


-- onix_pm.dbo.product_category definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_category;

CREATE TABLE product_category (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_product_category PRIMARY KEY (id)
);


-- onix_pm.dbo.registry definition

-- Drop table

-- DROP TABLE onix_pm.dbo.registry;

CREATE TABLE registry (
	id int NOT NULL,
	name varchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	uid varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
	strvalue varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	memovalue text COLLATE Cyrillic_General_CI_AS NULL
);


-- onix_pm.dbo.[sequence] definition

-- Drop table

-- DROP TABLE onix_pm.dbo.[sequence];

CREATE TABLE [sequence] (
	id varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	key_value varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	userseq int NULL
);


-- onix_pm.dbo.sysdiagrams definition

-- Drop table

-- DROP TABLE onix_pm.dbo.sysdiagrams;

CREATE TABLE sysdiagrams (
	name sysname COLLATE Cyrillic_General_CI_AS NOT NULL,
	principal_id int NOT NULL,
	diagram_id int IDENTITY(1,1) NOT NULL,
	version int NULL,
	definition varbinary(MAX) NULL,
	CONSTRAINT PK__sysdiagrams__53D770D6 PRIMARY KEY (diagram_id),
	CONSTRAINT UK_principal_name UNIQUE (principal_id,name)
);


-- onix_pm.dbo.templates definition

-- Drop table

-- DROP TABLE onix_pm.dbo.templates;

CREATE TABLE templates (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_templates PRIMARY KEY (id)
);


-- onix_pm.dbo.transform_item_types definition

-- Drop table

-- DROP TABLE onix_pm.dbo.transform_item_types;

CREATE TABLE transform_item_types (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_transform_item_types PRIMARY KEY (id)
);


-- onix_pm.dbo.transformations definition

-- Drop table

-- DROP TABLE onix_pm.dbo.transformations;

CREATE TABLE transformations (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	filename varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_transformations PRIMARY KEY (id)
);


-- onix_pm.dbo.trees definition

-- Drop table

-- DROP TABLE onix_pm.dbo.trees;

CREATE TABLE trees (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK_trees PRIMARY KEY (id)
);


-- onix_pm.dbo.users definition

-- Drop table

-- DROP TABLE onix_pm.dbo.users;

CREATE TABLE users (
	id int NOT NULL,
	name varchar(32) COLLATE Cyrillic_General_CI_AS NOT NULL,
	name_uc varchar(32) COLLATE Cyrillic_General_CI_AS NOT NULL,
	pwd varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
	fullname varchar(128) COLLATE Cyrillic_General_CI_AS NULL
);


-- onix_pm.dbo.vendor definition

-- Drop table

-- DROP TABLE onix_pm.dbo.vendor;

CREATE TABLE vendor (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	id1 int NULL,
	id2 int NULL,
	id3 int NULL,
	CONSTRAINT PK_vendor PRIMARY KEY (id)
);


-- onix_pm.dbo.views definition

-- Drop table

-- DROP TABLE onix_pm.dbo.views;

CREATE TABLE views (
	id int NOT NULL,
	name varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	view_schema varchar(32) COLLATE Cyrillic_General_CI_AS NOT NULL,
	fields text COLLATE Cyrillic_General_CI_AS NULL,
	conditions text COLLATE Cyrillic_General_CI_AS NULL,
	sorts text COLLATE Cyrillic_General_CI_AS NULL
);


-- onix_pm.dbo.O_COLUMN definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COLUMN;

CREATE TABLE O_COLUMN (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	COLUMN_ID int NOT NULL,
	FIELD_NAME varchar(50) COLLATE Cyrillic_General_CI_AS NOT NULL,
	COLUMN_TYPE_ID int NULL,
	COMMENT varchar(20) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__O_COLUMN__0638D371 PRIMARY KEY (COLUMN_ID),
	CONSTRAINT FK__O_COLUMN__COLUMN__194BA7E5 FOREIGN KEY (COLUMN_TYPE_ID) REFERENCES O_COLUMN_TYPE(COLUMN_TYPE_ID)
);


-- onix_pm.dbo.O_PRICE_TYPE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_PRICE_TYPE;

CREATE TABLE O_PRICE_TYPE (
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	PRICE_TYPE_ID int NOT NULL,
	MY_PRICE_COLUMN_ID int NOT NULL,
	CONSTRAINT PK__O_PRICE_TYPE__04508AFF PRIMARY KEY (PRICE_TYPE_ID),
	CONSTRAINT FK__O_PRICE_T__MY_PR__185783AC FOREIGN KEY (MY_PRICE_COLUMN_ID) REFERENCES O_COLUMN(COLUMN_ID)
);


-- onix_pm.dbo.aspnet_Paths definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Paths;

CREATE TABLE aspnet_Paths (
	ApplicationId uniqueidentifier NOT NULL,
	PathId uniqueidentifier DEFAULT newid() NOT NULL,
	[Path] nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	LoweredPath nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	CONSTRAINT PK__aspnet_Paths__2818EA29 PRIMARY KEY (PathId),
	CONSTRAINT FK__aspnet_Pa__Appli__290D0E62 FOREIGN KEY (ApplicationId) REFERENCES aspnet_Applications(ApplicationId)
);
 CREATE  UNIQUE CLUSTERED INDEX aspnet_Paths_index ON dbo.aspnet_Paths (  ApplicationId ASC  , LoweredPath ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_PersonalizationAllUsers definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_PersonalizationAllUsers;

CREATE TABLE aspnet_PersonalizationAllUsers (
	PathId uniqueidentifier NOT NULL,
	PageSettings image NOT NULL,
	LastUpdatedDate datetime NOT NULL,
	CONSTRAINT PK__aspnet_Personali__2DD1C37F PRIMARY KEY (PathId),
	CONSTRAINT FK__aspnet_Pe__PathI__2EC5E7B8 FOREIGN KEY (PathId) REFERENCES aspnet_Paths(PathId)
);


-- onix_pm.dbo.aspnet_Roles definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Roles;

CREATE TABLE aspnet_Roles (
	ApplicationId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier DEFAULT newid() NOT NULL,
	RoleName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	LoweredRoleName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	Description nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__aspnet_Roles__150615B5 PRIMARY KEY (RoleId),
	CONSTRAINT FK__aspnet_Ro__Appli__15FA39EE FOREIGN KEY (ApplicationId) REFERENCES aspnet_Applications(ApplicationId)
);
 CREATE  UNIQUE CLUSTERED INDEX aspnet_Roles_index1 ON dbo.aspnet_Roles (  ApplicationId ASC  , LoweredRoleName ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_Users definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Users;

CREATE TABLE aspnet_Users (
	ApplicationId uniqueidentifier NOT NULL,
	UserId uniqueidentifier DEFAULT newid() NOT NULL,
	UserName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	LoweredUserName nvarchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	MobileAlias nvarchar(16) COLLATE Cyrillic_General_CI_AS DEFAULT NULL NULL,
	IsAnonymous bit DEFAULT 0 NOT NULL,
	LastActivityDate datetime NOT NULL,
	CONSTRAINT PK__aspnet_Users__664B26CC PRIMARY KEY (UserId),
	CONSTRAINT FK__aspnet_Us__Appli__673F4B05 FOREIGN KEY (ApplicationId) REFERENCES aspnet_Applications(ApplicationId)
);
 CREATE  UNIQUE CLUSTERED INDEX aspnet_Users_Index ON dbo.aspnet_Users (  ApplicationId ASC  , LoweredUserName ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE NONCLUSTERED INDEX aspnet_Users_Index2 ON dbo.aspnet_Users (  ApplicationId ASC  , LastActivityDate ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_UsersInRoles definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_UsersInRoles;

CREATE TABLE aspnet_UsersInRoles (
	UserId uniqueidentifier NOT NULL,
	RoleId uniqueidentifier NOT NULL,
	CONSTRAINT PK__aspnet_UsersInRo__18D6A699 PRIMARY KEY (UserId,RoleId),
	CONSTRAINT FK__aspnet_Us__RoleI__1ABEEF0B FOREIGN KEY (RoleId) REFERENCES aspnet_Roles(RoleId),
	CONSTRAINT FK__aspnet_Us__UserI__19CACAD2 FOREIGN KEY (UserId) REFERENCES aspnet_Users(UserId)
);
 CREATE NONCLUSTERED INDEX aspnet_UsersInRoles_index ON dbo.aspnet_UsersInRoles (  RoleId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.measure_units definition

-- Drop table

-- DROP TABLE onix_pm.dbo.measure_units;

CREATE TABLE measure_units (
	id int NOT NULL,
	measure_id int NOT NULL,
	name varchar(16) COLLATE Cyrillic_General_CI_AS NOT NULL,
	coef decimal(18,0) NOT NULL,
	is_def int NOT NULL,
	CONSTRAINT PK_measure_units PRIMARY KEY (id),
	CONSTRAINT FK_measure_units_measures FOREIGN KEY (measure_id) REFERENCES measures(id)
);


-- onix_pm.dbo.product_type definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_type;

CREATE TABLE product_type (
	id int NOT NULL,
	product_type varchar(8) COLLATE Cyrillic_General_CI_AS NOT NULL,
	name varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
	template_id int NULL,
	transform_name1 int NULL,
	transform_name2 int NULL,
	transform_name3 int NULL,
	transform_name4 int NULL,
	transform_desc int NULL,
	CONSTRAINT PK_product_type PRIMARY KEY (id),
	CONSTRAINT FK_product_type_templates FOREIGN KEY (template_id) REFERENCES templates(id),
	CONSTRAINT FK_product_type_transform_name4 FOREIGN KEY (transform_name4) REFERENCES transformations(id),
	CONSTRAINT FK_product_type_transformations FOREIGN KEY (transform_name1) REFERENCES transformations(id),
	CONSTRAINT FK_product_type_transformations1 FOREIGN KEY (transform_name2) REFERENCES transformations(id),
	CONSTRAINT FK_product_type_transformations2 FOREIGN KEY (transform_name3) REFERENCES transformations(id),
	CONSTRAINT FK_product_type_transformations3 FOREIGN KEY (transform_desc) REFERENCES transformations(id)
);


-- onix_pm.dbo.systems definition

-- Drop table

-- DROP TABLE onix_pm.dbo.systems;

CREATE TABLE systems (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	product_type_id int NOT NULL,
	CONSTRAINT PK_systems PRIMARY KEY (id),
	CONSTRAINT FK_systems_product_type FOREIGN KEY (product_type_id) REFERENCES product_type(id)
);


-- onix_pm.dbo.tree_nodes definition

-- Drop table

-- DROP TABLE onix_pm.dbo.tree_nodes;

CREATE TABLE tree_nodes (
	id int NOT NULL,
	tree_id int NOT NULL,
	parent_id int NULL,
	code varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	access_type_id int NULL,
	product_category_id int NULL,
	content_file varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	priority int NULL,
	hidden int NULL,
	bgimg1 varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	bgimg2 varchar(2048) COLLATE Cyrillic_General_CI_AS NULL,
	headerhtml varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	footerhtml varchar(2048) COLLATE Cyrillic_General_CI_AS NULL,
	url varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_tree_nodes PRIMARY KEY (id),
	CONSTRAINT FK_tree_nodes_o_access_type_id FOREIGN KEY (access_type_id) REFERENCES O_ACCESS_TYPE(ACCESS_TYPE_ID),
	CONSTRAINT FK_tree_nodes_product_category_id FOREIGN KEY (product_category_id) REFERENCES product_category(id),
	CONSTRAINT FK_tree_nodes_tree_nodes FOREIGN KEY (parent_id) REFERENCES tree_nodes(id),
	CONSTRAINT FK_tree_nodes_trees FOREIGN KEY (tree_id) REFERENCES trees(id)
);


-- onix_pm.dbo.O_COLUMN_NODE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COLUMN_NODE;

CREATE TABLE O_COLUMN_NODE (
	NODE_ID int NOT NULL,
	COLUMN_ID int NOT NULL,
	ACCESS_TYPE_ID int NOT NULL,
	COLUMN_ORDER int NULL,
	CONSTRAINT PK__O_COLUMN_NODE__78DED853 PRIMARY KEY (NODE_ID,COLUMN_ID),
	CONSTRAINT FK__O_COLUMN___ACCES__129EAA56 FOREIGN KEY (ACCESS_TYPE_ID) REFERENCES O_ACCESS_TYPE(ACCESS_TYPE_ID),
	CONSTRAINT FK__O_COLUMN___COLUM__1486F2C8 FOREIGN KEY (COLUMN_ID) REFERENCES O_COLUMN(COLUMN_ID),
	CONSTRAINT FK__O_COLUMN___NODE___1392CE8F FOREIGN KEY (NODE_ID) REFERENCES tree_nodes(id)
);


-- onix_pm.dbo.O_COLUMN_NODE_ROLE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COLUMN_NODE_ROLE;

CREATE TABLE O_COLUMN_NODE_ROLE (
	COMPANY_ROLE_ID int NOT NULL,
	NODE_ID int NOT NULL,
	COLUMN_ID int NOT NULL,
	CONSTRAINT PK__O_COLUMN_NODE_RO__76F68FE1 PRIMARY KEY (COMPANY_ROLE_ID,NODE_ID,COLUMN_ID),
	CONSTRAINT FK__O_COLUMN_NODE_RO__10B661E4 FOREIGN KEY (NODE_ID,COLUMN_ID) REFERENCES O_COLUMN_NODE(NODE_ID,COLUMN_ID),
	CONSTRAINT FK__O_COLUMN___COMPA__11AA861D FOREIGN KEY (COMPANY_ROLE_ID) REFERENCES O_COMPANY_ROLE(COMPANY_ROLE_ID)
);


-- onix_pm.dbo.O_COMPANY definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_COMPANY;

CREATE TABLE O_COMPANY (
	ERP_ID int NOT NULL,
	NAME varchar(20) COLLATE Cyrillic_General_CI_AS NOT NULL,
	FULL_NAME varchar(50) COLLATE Cyrillic_General_CI_AS NULL,
	CLIENT_TYPE int NOT NULL,
	COMPANY_ID int NOT NULL,
	CURRENCY_ID int NOT NULL,
	PRICE_TYPE_ID int NOT NULL,
	CONSTRAINT PK__O_COMPANY__0268428D PRIMARY KEY (COMPANY_ID),
	CONSTRAINT FK_O_COMPANY_O_CURRENCY FOREIGN KEY (CURRENCY_ID) REFERENCES O_CURRENCY(CURRENCY_ID),
	CONSTRAINT FK_O_COMPANY_O_PRICE_TYPE FOREIGN KEY (PRICE_TYPE_ID) REFERENCES O_PRICE_TYPE(PRICE_TYPE_ID)
);


-- onix_pm.dbo.O_MEMBERSHIP definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_MEMBERSHIP;

CREATE TABLE O_MEMBERSHIP (
	COMPANY_ID int NOT NULL,
	COMPANY_ROLE_ID int NOT NULL,
	CONSTRAINT PK__O_MEMBERSHIP__7CAF6937 PRIMARY KEY (COMPANY_ID,COMPANY_ROLE_ID),
	CONSTRAINT FK_O_MEMBERSHIP_O_COMPANY FOREIGN KEY (COMPANY_ID) REFERENCES O_COMPANY(COMPANY_ID),
	CONSTRAINT FK__O_MEMBERS__COMPA__166F3B3A FOREIGN KEY (COMPANY_ROLE_ID) REFERENCES O_COMPANY_ROLE(COMPANY_ROLE_ID)
);


-- onix_pm.dbo.O_NODE_ROLE definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_NODE_ROLE;

CREATE TABLE O_NODE_ROLE (
	NODE_ID int NOT NULL,
	COMPANY_ROLE_ID int NOT NULL,
	CONSTRAINT PK__O_NODE_ROLE__0A096455 PRIMARY KEY (NODE_ID,COMPANY_ROLE_ID),
	CONSTRAINT FK__O_NODE_RO__COMPA__1B33F057 FOREIGN KEY (COMPANY_ROLE_ID) REFERENCES O_COMPANY_ROLE(COMPANY_ROLE_ID),
	CONSTRAINT FK__O_NODE_RO__NODE___1A3FCC1E FOREIGN KEY (NODE_ID) REFERENCES tree_nodes(id)
);


-- onix_pm.dbo.O_USER definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_USER;

CREATE TABLE O_USER (
	EMAIL varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	USER_ID int IDENTITY(1,1) NOT NULL,
	PASSWORD varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	FIRST_NAME varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	LAST_NAME varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	COMPANY_ID int NOT NULL,
	CITY varchar(64) COLLATE Cyrillic_General_CI_AS DEFAULT '' NOT NULL,
	PHONE varchar(64) COLLATE Cyrillic_General_CI_AS DEFAULT '' NOT NULL,
	WEB varchar(64) COLLATE Cyrillic_General_CI_AS DEFAULT 'http://' NOT NULL,
	COMPANY varchar(64) COLLATE Cyrillic_General_CI_AS DEFAULT '' NOT NULL,
	CONSTRAINT PK__O_USER__007FFA1B PRIMARY KEY (USER_ID),
	CONSTRAINT FK_O_USER_O_COMPANY FOREIGN KEY (COMPANY_ID) REFERENCES O_COMPANY(COMPANY_ID)
);


-- onix_pm.dbo.O_USER_ROLE_USER definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_USER_ROLE_USER;

CREATE TABLE O_USER_ROLE_USER (
	USER_ID int NOT NULL,
	USER_ROLE_ID int NOT NULL,
	CONSTRAINT PK__O_USER_ROLE_USER__7E97B1A9 PRIMARY KEY (USER_ID,USER_ROLE_ID),
	CONSTRAINT FK_O_USER_ROLE_USER_O_USER FOREIGN KEY (USER_ID) REFERENCES O_USER(USER_ID),
	CONSTRAINT FK__O_USER_RO__USER___17635F73 FOREIGN KEY (USER_ROLE_ID) REFERENCES O_USER_ROLE(USER_ROLE_ID)
);


-- onix_pm.dbo.aspnet_Membership definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Membership;

CREATE TABLE aspnet_Membership (
	ApplicationId uniqueidentifier NOT NULL,
	UserId uniqueidentifier NOT NULL,
	Password nvarchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	PasswordFormat int DEFAULT 0 NOT NULL,
	PasswordSalt nvarchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	MobilePIN nvarchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	Email nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	LoweredEmail nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	PasswordQuestion nvarchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	PasswordAnswer nvarchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	IsApproved bit NOT NULL,
	IsLockedOut bit NOT NULL,
	CreateDate datetime NOT NULL,
	LastLoginDate datetime NOT NULL,
	LastPasswordChangedDate datetime NOT NULL,
	LastLockoutDate datetime NOT NULL,
	FailedPasswordAttemptCount int NOT NULL,
	FailedPasswordAttemptWindowStart datetime NOT NULL,
	FailedPasswordAnswerAttemptCount int NOT NULL,
	FailedPasswordAnswerAttemptWindowStart datetime NOT NULL,
	Comment ntext COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__aspnet_Membershi__76818E95 PRIMARY KEY (UserId),
	CONSTRAINT FK__aspnet_Me__Appli__7775B2CE FOREIGN KEY (ApplicationId) REFERENCES aspnet_Applications(ApplicationId),
	CONSTRAINT FK__aspnet_Me__UserI__7869D707 FOREIGN KEY (UserId) REFERENCES aspnet_Users(UserId)
);
 CREATE CLUSTERED INDEX aspnet_Membership_index ON dbo.aspnet_Membership (  ApplicationId ASC  , LoweredEmail ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_PersonalizationPerUser definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_PersonalizationPerUser;

CREATE TABLE aspnet_PersonalizationPerUser (
	Id uniqueidentifier DEFAULT newid() NOT NULL,
	PathId uniqueidentifier NULL,
	UserId uniqueidentifier NULL,
	PageSettings image NOT NULL,
	LastUpdatedDate datetime NOT NULL,
	CONSTRAINT PK__aspnet_Personali__30AE302A PRIMARY KEY (Id),
	CONSTRAINT FK__aspnet_Pe__PathI__3296789C FOREIGN KEY (PathId) REFERENCES aspnet_Paths(PathId),
	CONSTRAINT FK__aspnet_Pe__UserI__338A9CD5 FOREIGN KEY (UserId) REFERENCES aspnet_Users(UserId)
);
 CREATE  UNIQUE CLUSTERED INDEX aspnet_PersonalizationPerUser_index1 ON dbo.aspnet_PersonalizationPerUser (  PathId ASC  , UserId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;
 CREATE  UNIQUE NONCLUSTERED INDEX aspnet_PersonalizationPerUser_ncindex2 ON dbo.aspnet_PersonalizationPerUser (  UserId ASC  , PathId ASC  )  
	 WITH (  PAD_INDEX = OFF ,FILLFACTOR = 100  ,SORT_IN_TEMPDB = OFF , IGNORE_DUP_KEY = OFF , STATISTICS_NORECOMPUTE = OFF , ONLINE = OFF , ALLOW_ROW_LOCKS = ON , ALLOW_PAGE_LOCKS = ON  )
	 ON [PRIMARY ] ;


-- onix_pm.dbo.aspnet_Profile definition

-- Drop table

-- DROP TABLE onix_pm.dbo.aspnet_Profile;

CREATE TABLE aspnet_Profile (
	UserId uniqueidentifier NOT NULL,
	PropertyNames ntext COLLATE Cyrillic_General_CI_AS NOT NULL,
	PropertyValuesString ntext COLLATE Cyrillic_General_CI_AS NOT NULL,
	PropertyValuesBinary image NOT NULL,
	LastUpdatedDate datetime NOT NULL,
	CONSTRAINT PK__aspnet_Profile__0B7CAB7B PRIMARY KEY (UserId),
	CONSTRAINT FK__aspnet_Pr__UserI__0C70CFB4 FOREIGN KEY (UserId) REFERENCES aspnet_Users(UserId)
);


-- onix_pm.dbo.[attributes] definition

-- Drop table

-- DROP TABLE onix_pm.dbo.[attributes];

CREATE TABLE [attributes] (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	attrib_type int NOT NULL,
	attrib_datatype int NOT NULL,
	lookup_id int NULL,
	measure_id int NULL,
	measure_unit_id int NULL,
	comment varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_attributes PRIMARY KEY (id),
	CONSTRAINT FK_attributes_attrib_data_types FOREIGN KEY (attrib_datatype) REFERENCES attrib_data_types(id),
	CONSTRAINT FK_attributes_attrib_types FOREIGN KEY (attrib_type) REFERENCES attrib_types(id),
	CONSTRAINT FK_attributes_measure_units FOREIGN KEY (measure_unit_id) REFERENCES measure_units(id),
	CONSTRAINT FK_attributes_measures FOREIGN KEY (measure_id) REFERENCES measures(id)
);


-- onix_pm.dbo.company_pricing definition

-- Drop table

-- DROP TABLE onix_pm.dbo.company_pricing;

CREATE TABLE company_pricing (
	id int NOT NULL,
	company_id int NOT NULL,
	product_category_id int NOT NULL,
	price_type_id int NOT NULL,
	CONSTRAINT PK_company_pricing PRIMARY KEY (id),
	CONSTRAINT FK_company_pricing_company_id FOREIGN KEY (company_id) REFERENCES O_COMPANY(COMPANY_ID),
	CONSTRAINT FK_company_pricing_price_type_id FOREIGN KEY (price_type_id) REFERENCES O_PRICE_TYPE(PRICE_TYPE_ID),
	CONSTRAINT FK_company_pricing_product_category_id FOREIGN KEY (product_category_id) REFERENCES product_category(id)
);


-- onix_pm.dbo.custom_pages definition

-- Drop table

-- DROP TABLE onix_pm.dbo.custom_pages;

CREATE TABLE custom_pages (
	id int NOT NULL,
	name varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
	url varchar(255) COLLATE Cyrillic_General_CI_AS NULL,
	node_id int NOT NULL,
	hidden int NULL,
	priority int NULL,
	CONSTRAINT PK_custom_pages PRIMARY KEY (id),
	CONSTRAINT FK_custom_pages_tree_nodes FOREIGN KEY (node_id) REFERENCES tree_nodes(id)
);


-- onix_pm.dbo.lookups definition

-- Drop table

-- DROP TABLE onix_pm.dbo.lookups;

CREATE TABLE lookups (
	id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	attrib_type int NOT NULL,
	attrib_datatype int NOT NULL,
	measure_id int NULL,
	measure_unit_id int NULL,
	CONSTRAINT PK_lookups PRIMARY KEY (id),
	CONSTRAINT FK_lookups_attrib_data_types FOREIGN KEY (attrib_datatype) REFERENCES attrib_data_types(id),
	CONSTRAINT FK_lookups_attrib_types FOREIGN KEY (attrib_type) REFERENCES attrib_types(id),
	CONSTRAINT FK_lookups_measure_units FOREIGN KEY (measure_unit_id) REFERENCES measure_units(id),
	CONSTRAINT FK_lookups_measures FOREIGN KEY (measure_id) REFERENCES measures(id)
);


-- onix_pm.dbo.product_catalog definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_catalog;

CREATE TABLE product_catalog (
	id int NOT NULL,
	pn_code varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	order_pn varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	state int NULL,
	model_code varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	product_type_id int NULL,
	product_type varchar(8) COLLATE Cyrillic_General_CI_AS NULL,
	package_type varchar(8) COLLATE Cyrillic_General_CI_AS NULL,
	vendor_id int NULL,
	vendor_description varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	visible_in_pricing int NULL,
	pricing_master varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	price_fob decimal(18,2) NULL,
	price_fob2 decimal(18,2) NULL,
	price_cost decimal(18,2) NULL,
	price_1 decimal(18,2) NULL,
	price_2 decimal(18,2) NULL,
	price_3 decimal(18,2) NULL,
	price_4 decimal(18,2) NULL,
	price_5 decimal(18,2) NULL,
	price_6 decimal(18,2) NULL,
	price_7 decimal(18,2) NULL,
	price_8 decimal(18,2) NULL,
	price_9 decimal(18,2) NULL,
	prop_1 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_2 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_3 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_4 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_5 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_6 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_7 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_8 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_9 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prop_10 varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	name1 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name2 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name3 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name4 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name5 varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	description varchar(2048) COLLATE Cyrillic_General_CI_AS NULL,
	warranty int NULL,
	is_assemble int NULL,
	assemble_content varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	components varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	required_goods varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	url varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	url_hl varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_cost_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_1_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_2_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_3_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_4_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_5_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_6_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_7_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_8_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	price_9_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name1_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name2_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name3_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name4_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	name5_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	description_formula varchar(256) COLLATE Cyrillic_General_CI_AS NULL,
	warranty_assignment decimal(18,2) NULL,
	min_qtty int NULL,
	alternate_goods varchar(1024) COLLATE Cyrillic_General_CI_AS NULL,
	hl_export int NULL,
	modify_time datetime NULL,
	described int NULL,
	checked int NULL,
	picture_id int NULL,
	availability int NULL,
	stock_update int NULL,
	system_category_id int NULL,
	product_category_id int NULL,
	node_id int NULL,
	has_sn int NULL,
	xml_name varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	hidden int NULL,
	custom_url varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	priority int NULL,
	CONSTRAINT IX_product_catalog_pn_code UNIQUE (pn_code),
	CONSTRAINT PK_product_catalog PRIMARY KEY (id),
	CONSTRAINT FK_product_catalog_node_id FOREIGN KEY (node_id) REFERENCES tree_nodes(id),
	CONSTRAINT FK_product_catalog_product_category_id FOREIGN KEY (product_category_id) REFERENCES product_category(id),
	CONSTRAINT FK_product_catalog_product_type FOREIGN KEY (product_type_id) REFERENCES product_type(id),
	CONSTRAINT FK_product_catalog_system_category_id FOREIGN KEY (system_category_id) REFERENCES product_category(id),
	CONSTRAINT FK_product_catalog_vendor FOREIGN KEY (vendor_id) REFERENCES vendor(id)
);


-- onix_pm.dbo.product_components definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_components;

CREATE TABLE product_components (
	id int NOT NULL,
	product_id int NOT NULL,
	component_id int NOT NULL,
	qtty int NOT NULL,
	required int NOT NULL,
	CONSTRAINT PK_product_components PRIMARY KEY (id),
	CONSTRAINT FK_product_components_product_catalog FOREIGN KEY (product_id) REFERENCES product_catalog(id),
	CONSTRAINT FK_product_components_product_catalog1 FOREIGN KEY (component_id) REFERENCES product_catalog(id)
);


-- onix_pm.dbo.product_downloads definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_downloads;

CREATE TABLE product_downloads (
	id int NOT NULL,
	product_id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	url varchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	file_type_id varchar(4) COLLATE Cyrillic_General_CI_AS NULL,
	download_order int NULL,
	CONSTRAINT PK_product_downloads PRIMARY KEY (id),
	CONSTRAINT FK_product_downloads_file_types FOREIGN KEY (file_type_id) REFERENCES file_types(id),
	CONSTRAINT FK_product_downloads_product_catalog FOREIGN KEY (product_id) REFERENCES product_catalog(id)
);


-- onix_pm.dbo.product_images definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_images;

CREATE TABLE product_images (
	id int NOT NULL,
	product_id int NOT NULL,
	img_type int NOT NULL,
	filename varchar(128) COLLATE Cyrillic_General_CI_AS NOT NULL,
	wid int NULL,
	hei int NULL,
	filename_large varchar(128) COLLATE Cyrillic_General_CI_AS NULL,
	wid_large int NULL,
	hei_large int NULL,
	img_order int NOT NULL,
	CONSTRAINT PK_product_images PRIMARY KEY (id),
	CONSTRAINT FK_product_images_product_catalog FOREIGN KEY (product_id) REFERENCES product_catalog(id)
);


-- onix_pm.dbo.product_links definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_links;

CREATE TABLE product_links (
	id int NOT NULL,
	product_id int NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	url varchar(256) COLLATE Cyrillic_General_CI_AS NOT NULL,
	link_order int NULL,
	hidden int NULL,
	CONSTRAINT PK_product_links PRIMARY KEY (id),
	CONSTRAINT FK_product_links_product_catalog FOREIGN KEY (product_id) REFERENCES product_catalog(id)
);


-- onix_pm.dbo.system_components definition

-- Drop table

-- DROP TABLE onix_pm.dbo.system_components;

CREATE TABLE system_components (
	id int NOT NULL,
	system_id int NOT NULL,
	name varchar(64) COLLATE Cyrillic_General_CI_AS NOT NULL,
	product_type_id int NOT NULL,
	is_required int NOT NULL,
	CONSTRAINT PK_system_components PRIMARY KEY (id),
	CONSTRAINT FK_system_components_product_type FOREIGN KEY (product_type_id) REFERENCES product_type(id),
	CONSTRAINT FK_system_components_systems FOREIGN KEY (system_id) REFERENCES systems(id)
);


-- onix_pm.dbo.system_content_rules definition

-- Drop table

-- DROP TABLE onix_pm.dbo.system_content_rules;

CREATE TABLE system_content_rules (
	id int NOT NULL,
	system_id int NOT NULL,
	cond_comp_id int NOT NULL,
	cond_attrib_id int NULL,
	[condition] int NOT NULL,
	lookup_id int NULL,
	lookup_value_id int NULL,
	attrib_value varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	[action] int NOT NULL,
	data_comp_id int NULL,
	data_attrib_id int NULL,
	dest_attrib_id int NULL,
	CONSTRAINT PK_system_content_rules PRIMARY KEY (id),
	CONSTRAINT FK_system_content_rules_attributes FOREIGN KEY (cond_attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_system_content_rules_attributes1 FOREIGN KEY (dest_attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_system_content_rules_system_components FOREIGN KEY (cond_comp_id) REFERENCES system_components(id),
	CONSTRAINT FK_system_content_rules_systems FOREIGN KEY (system_id) REFERENCES systems(id)
);


-- onix_pm.dbo.template_attributes definition

-- Drop table

-- DROP TABLE onix_pm.dbo.template_attributes;

CREATE TABLE template_attributes (
	id int NOT NULL,
	template_id int NOT NULL,
	attrib_id int NOT NULL,
	parent_id int NULL,
	order_tag int NULL,
	CONSTRAINT PK_template_attributes PRIMARY KEY (id),
	CONSTRAINT FK_template_attributes_attributes FOREIGN KEY (attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_template_attributes_template_attributes FOREIGN KEY (parent_id) REFERENCES template_attributes(id),
	CONSTRAINT FK_template_attributes_templates FOREIGN KEY (template_id) REFERENCES templates(id)
);


-- onix_pm.dbo.transform_items definition

-- Drop table

-- DROP TABLE onix_pm.dbo.transform_items;

CREATE TABLE transform_items (
	id int NOT NULL,
	transform_id int NOT NULL,
	parent_id int NULL,
	transform_item_type int NOT NULL,
	attrib_id int NULL,
	product_attribute varchar(32) COLLATE Cyrillic_General_CI_AS NULL,
	if_condition varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	format_number varchar(16) COLLATE Cyrillic_General_CI_AS NULL,
	prefix varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	suffix varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	multi_separator varchar(8) COLLATE Cyrillic_General_CI_AS NULL,
	show_measure_unit int NULL,
	not_show_value int NULL,
	measure_unit_id int NULL,
	order_tag int NULL,
	CONSTRAINT PK_transform_items PRIMARY KEY (id),
	CONSTRAINT FK_transform_items_attributes FOREIGN KEY (attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_transform_items_measure_units FOREIGN KEY (measure_unit_id) REFERENCES measure_units(id),
	CONSTRAINT FK_transform_items_transform_item_types FOREIGN KEY (transform_item_type) REFERENCES transform_item_types(id),
	CONSTRAINT FK_transform_items_transform_items FOREIGN KEY (parent_id) REFERENCES transform_items(id),
	CONSTRAINT FK_transform_items_transformations FOREIGN KEY (transform_id) REFERENCES transformations(id)
);


-- onix_pm.dbo.O_ORDERS definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_ORDERS;

CREATE TABLE O_ORDERS (
	USER_ID int NOT NULL,
	CREATED_DATE datetime NULL,
	ORDERS_ID int IDENTITY(1,1) NOT NULL,
	DESCRIPTION varchar(200) COLLATE Cyrillic_General_CI_AS NULL,
	NOTE varchar(200) COLLATE Cyrillic_General_CI_AS NULL,
	ORDERS_STATUS_ID int NULL,
	ORDERS_NUMBER int NULL,
	CONSTRAINT PK__O_ORDERS__1269A02C PRIMARY KEY (USER_ID,ORDERS_ID),
	CONSTRAINT FK_O_ORDERS_O_USER FOREIGN KEY (USER_ID) REFERENCES O_USER(USER_ID),
	CONSTRAINT FK__O_ORDERS__ORDERS__15460CD7 FOREIGN KEY (ORDERS_STATUS_ID) REFERENCES O_ORDERS_STATUS(ORDERS_STATUS_ID)
);


-- onix_pm.dbo.lookup_values definition

-- Drop table

-- DROP TABLE onix_pm.dbo.lookup_values;

CREATE TABLE lookup_values (
	id int NOT NULL,
	lookup_id int NOT NULL,
	attrib_value varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	measure_unit_id int NULL,
	order_tag int NULL,
	CONSTRAINT PK_lookup_values PRIMARY KEY (id),
	CONSTRAINT FK_lookup_values_lookups FOREIGN KEY (lookup_id) REFERENCES lookups(id),
	CONSTRAINT FK_lookup_values_measure_units FOREIGN KEY (measure_unit_id) REFERENCES measure_units(id)
);


-- onix_pm.dbo.product_attributes definition

-- Drop table

-- DROP TABLE onix_pm.dbo.product_attributes;

CREATE TABLE product_attributes (
	id int NOT NULL,
	product_id int NOT NULL,
	attrib_id int NOT NULL,
	parent_id int NULL,
	lookup_id int NULL,
	lookup_value_id int NULL,
	attrib_value varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	measure_id int NULL,
	measure_unit_id int NULL,
	order_tag int NULL,
	CONSTRAINT PK_content PRIMARY KEY (id),
	CONSTRAINT FK_product_attributes_attributes FOREIGN KEY (attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_product_attributes_lookup_values FOREIGN KEY (lookup_value_id) REFERENCES lookup_values(id),
	CONSTRAINT FK_product_attributes_lookups FOREIGN KEY (lookup_id) REFERENCES lookups(id),
	CONSTRAINT FK_product_attributes_measure_units FOREIGN KEY (measure_unit_id) REFERENCES measure_units(id),
	CONSTRAINT FK_product_attributes_measures FOREIGN KEY (measure_id) REFERENCES measures(id),
	CONSTRAINT FK_product_attributes_product_attributes FOREIGN KEY (parent_id) REFERENCES product_attributes(id),
	CONSTRAINT FK_product_attributes_product_catalog FOREIGN KEY (product_id) REFERENCES product_catalog(id)
);


-- onix_pm.dbo.tree_node_conditions definition

-- Drop table

-- DROP TABLE onix_pm.dbo.tree_node_conditions;

CREATE TABLE tree_node_conditions (
	id int NOT NULL,
	node_id int NOT NULL,
	vendor_id int NULL,
	product_type_id int NULL,
	attrib_id int NULL,
	lookup_id int NULL,
	cond int NULL,
	lookup_value_id int NULL,
	attrib_value varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK_tree_node_conditions PRIMARY KEY (id),
	CONSTRAINT FK_tree_node_conditions_attributes FOREIGN KEY (attrib_id) REFERENCES [attributes](id),
	CONSTRAINT FK_tree_node_conditions_lookup_values FOREIGN KEY (lookup_value_id) REFERENCES lookup_values(id),
	CONSTRAINT FK_tree_node_conditions_lookups FOREIGN KEY (lookup_id) REFERENCES lookups(id),
	CONSTRAINT FK_tree_node_conditions_product_type FOREIGN KEY (product_type_id) REFERENCES product_type(id),
	CONSTRAINT FK_tree_node_conditions_tree_nodes FOREIGN KEY (node_id) REFERENCES tree_nodes(id),
	CONSTRAINT FK_tree_node_conditions_vendor FOREIGN KEY (vendor_id) REFERENCES vendor(id)
);


-- onix_pm.dbo.O_ORDER definition

-- Drop table

-- DROP TABLE onix_pm.dbo.O_ORDER;

CREATE TABLE O_ORDER (
	ORDER_ID int IDENTITY(1,1) NOT NULL,
	USER_ID int NOT NULL,
	ORDERS_ID int NOT NULL,
	ITEM_COUNT int NOT NULL,
	PRICE money NOT NULL,
	ORDER_STATUS_ID int NULL,
	PN_CODE varchar(64) COLLATE Cyrillic_General_CI_AS NULL,
	CONSTRAINT PK__O_ORDER__108157BA PRIMARY KEY (ORDER_ID,USER_ID,ORDERS_ID),
	CONSTRAINT FK_O_ORDER_O_ORDER_STATUS FOREIGN KEY (ORDER_STATUS_ID) REFERENCES O_ORDER_STATUS(ORDER_STATUS_ID),
	CONSTRAINT FK__O_ORDER__135DC465 FOREIGN KEY (USER_ID,ORDERS_ID) REFERENCES O_ORDERS(USER_ID,ORDERS_ID)
);