IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTTicketStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] DROP CONSTRAINT [FK_TSTTickets_TSTTicketStatuses]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees1]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] DROP CONSTRAINT [FK_TSTTickets_TSTEmployees1]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] DROP CONSTRAINT [FK_TSTTickets_TSTEmployees]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTTickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes] DROP CONSTRAINT [FK_TSTTicketNotes_TSTTickets]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes] DROP CONSTRAINT [FK_TSTTicketNotes_TSTEmployees]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTEmployees_TSTDepartments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTEmployees]'))
ALTER TABLE [dbo].[TSTEmployees] DROP CONSTRAINT [FK_TSTEmployees_TSTDepartments]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[TSTTicketStatuses]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTicketStatuses]') AND type in (N'U'))
DROP TABLE [dbo].[TSTTicketStatuses]
GO
/****** Object:  Table [dbo].[TSTTickets]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTickets]') AND type in (N'U'))
DROP TABLE [dbo].[TSTTickets]
GO
/****** Object:  Table [dbo].[TSTTicketNotes]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]') AND type in (N'U'))
DROP TABLE [dbo].[TSTTicketNotes]
GO
/****** Object:  Table [dbo].[TSTEmployees]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTEmployees]') AND type in (N'U'))
DROP TABLE [dbo].[TSTEmployees]
GO
/****** Object:  Table [dbo].[TSTDepartments]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTDepartments]') AND type in (N'U'))
DROP TABLE [dbo].[TSTDepartments]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/22/2016 9:27:43 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TSTDepartments]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTDepartments]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TSTDepartments](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[DeptName] [nvarchar](20) NOT NULL,
	[DeptDesc] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_TSTDeparments] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TSTEmployees]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTEmployees]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TSTEmployees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[fname] [nvarchar](20) NOT NULL,
	[lname] [nvarchar](20) NOT NULL,
	[address1] [nvarchar](150) NULL,
	[address2] [nvarchar](50) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](2) NULL,
	[zip] [nvarchar](10) NULL,
	[phone1] [nvarchar](15) NOT NULL,
	[phone2] [nvarchar](15) NULL,
	[Email] [nvarchar](65) NOT NULL,
	[DeptID] [int] NOT NULL,
	[Image] [nvarchar](100) NULL,
	[DOB] [smalldatetime] NOT NULL,
	[HireDate] [smalldatetime] NOT NULL,
	[SeparationDate] [smalldatetime] NULL,
	[IsActive] [bit] NOT NULL,
	[JobTitle] [nvarchar](25) NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[UserID] [nvarchar](100) NULL,
 CONSTRAINT [PK_TSTEmployees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TSTTicketNotes]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TSTTicketNotes](
	[TicketNotesID] [int] IDENTITY(1,1) NOT NULL,
	[NotationDate] [smalldatetime] NOT NULL,
	[TicketID] [int] NOT NULL,
	[EmpID] [int] NOT NULL,
	[Notation] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_TSTTicketNotes] PRIMARY KEY CLUSTERED 
(
	[TicketNotesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TSTTickets]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTickets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TSTTickets](
	[TicketID] [int] IDENTITY(1001,1) NOT NULL,
	[StatusID] [int] NOT NULL,
	[SubmissionDate] [smalldatetime] NOT NULL,
	[SubmittedByID] [int] NOT NULL,
	[CompletedDate] [smalldatetime] NULL,
	[TicketDesc] [nvarchar](500) NOT NULL,
	[AssignedTechID] [int] NULL,
 CONSTRAINT [PK_TSTTickets] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TSTTicketStatuses]    Script Date: 9/22/2016 9:27:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TSTTicketStatuses]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TSTTicketStatuses](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](25) NOT NULL,
	[StatusDesc] [nvarchar](500) NULL,
 CONSTRAINT [PK_TSTTicketStatuses] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201609131444091_InitialCreate', N'IdentitySample.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F20FF20E869B3705ABEEC0C668D7602A76D678D1D5F30ED09F66DC096D86D62244A91288F8DC57ED93EE493F20B5BD49D375DBAE5EE761060322D92A78AC543B2582CCE1FFFFB7DFAD373E05B4F384E4848CFECA3C9A16D61EA861EA1AB333B65CB1F3ED83FFDF8DD5FA6975EF06CFD5AD63BE1F5A0254DCEEC47C6A253C749DC471CA0641210370E9370C9266E1838C80B9DE3C3C37F3847470E06081BB02C6BFA29A58C0438FB013F67217571C452E4DF841EF693E23B94CC3354EB16053889908BCFEC6B0F435BF6324741E4E349DEC0B6CE7D82409939F697B685280D1962A0EAE9E704CF591CD2D53C820FC87F788930D45B223FC145174EEBEA7D7B7378CC7BE3D40D4B28374D58180C043C3A29CCE3C8CDD732B25D990F0C7899198BF73A33626DBF4FA10F0690059ECEFC98573EB36F2A11E749748BD9A46C38C921AF6280FB16C65F274DC403AB77BB838A4EC79343FEDF81354B7D96C6F88CE294C5C83FB0EED3854FDC7FE19787F02BA66727478BE5C98777EF9177F2FEEFF8E45DB3A7D057A8277C804FF77118E11874C3CBAAFFB6E588ED1CB961D5ACD126B70A700966866DDDA0E78F98AED823CC99E30FB675459EB1577E29C8F599129848D088C529FCBC4D7D1F2D7C5C953BAD32F99F2D528FDFBD1F45EA2D7A22AB6CE825F930716298579FB09F95268F24CAA79730DE5F8A6A577118F0DF22BFF2D22FF3308D5DDE99D058E501C52BCC44EDA64E4DDE5E94E650E3D3BA44DD7F6A734D557A6BABF20EAD33134A11DB9E0DA5BEAF2BB737E3CEA308062FA316B7481BE1B4FBD5440238B01E88FB15B38718C1FFE2C937BCA83974D4974314FAF6675E122F0344FC11D6C41E52C023599238C0552F7F0E8181880ED6F91E25092C09DE3F51F2D8A23AFC7504D5E7D84D63CE3506647B7569F78F21C5B769B0E013607BB2461B9A876FE1157259185F52DE6A63BC8FA1FB354CD925F52E10C39F995B02F29F0F24E80F308A3AE7AE8B93E40AC88CBD59080E7709784DD9C9F16038BE4CEDDA2799F988047AA7445A50BF94556BC7445F43714E0CD5740E4A9BAA1FC315A1FD542DAB9A55CD6B74AA5A541BAA2A07EBA76951D3AC6856A153CFBCD6682E5F3642E3FB7C19ECFE3B7D9B6DDEA6B5A061C639AC90F8174C710CCB98778F18C331AD47A0CFBAB10B67211B3E2EF4D5F7A64CD2AFC84FC716B5D66CC81681F1674306BBFFB32153133E3F118F7B253D4E42656580EF555F7FC8EA9E739266DB9E0E4237B72D7C3B6B8069BA9C2749E8926C16686260450443D41F7C38AB3B9C91F7460E8940C780E8846F79F005FA66CBA4BAA317D8C70C5BE76E1E239CA1C4459E6A46E8903740B17247D52856874644E5FEA6C804A6E3983742FC1094C04C2594A9D382509744C8EFB492D4B2E716C6FB5EC9904B2E70842917D869893EC2F59110AE4025471A942E0B4D9D06E3DA8968F05A4D63DEE5C2D6E3AE0428B6C2C90EDFD9C0CBC27F7B1562B65B6C0BE46C37491F058C51BD5D10B438ABF425807C70D937824A272603410B976A2B04152DB603828A26797304CD8FA87DC75F3AAFEE1B3DC583F2F6B7F55673ED809B823DF68C9AB9EF096D18B4C0B14ACF8B052FC4CF4C7338033D8BF35952B8BA3245B22B04CCC4904DEDEF6AFD50A71D4426511B604DB40ED0E23E50015226D400E5CA585EAB7685173100B68CBBB5C2166BBF04DBE0808ADDBC176D5434DF9ECAE4EC75FAA87A56B1412179AFC3420347430879F1123BDEC328A6B8AC6A983EBEF0106FB8D1B162305A0CD4E1B91A8C547666742B95D4ECB692CE211BE2926D6425C97D3258A9ECCCE8562A38DA6D248D5330C02DD8C844E2163ED2642B231DD56E53954D9D3C63AAF830750CA955D31B144584AE1AA956C5176B9EE759CD7E980FCF3E0A720CC74D34494895B6952416C66885A552100D9A5E9138611788A105E2719E991728D5B47BAB61F92F4536B74F7510CB7DA0ACCDFF2EAEEDE22DBEB0DDAAFE480173059D0CB8539345D23514D037B778F61BF251AC09DECF423F0DA8D9C732B7CEAFF09AEDF32F2AC2D491F4577C28C5608AA72B5ABFD7D8A8F362BC71AABC98F5C7CA0C61B278E983366D6EF24BCD286598AA89620A5DED6CEC4CEECCD0F1929DC5E1C3D589F03AB3ABC8506902149F066234921C14B046597F54310FA5892996F44794924D9A9052D1002D9B29258292CD82B5F00C16D5D7E82F414D2269A2ABA5FD9135E9244D684DF11AD81A9DE5B2FEA89A8C9326B0A6B83F769D7E22AFA37BBC7F198F309B6C60F94177B31DCC80F13A8BE2381B60E33EBF09D4F83C10ABB8B157C08AEF7B4928E3696F1342E5218ECD0865C030AF3FC265B8B8FCB4DEE09B31851B6E61896FBBE137E30DA3EDAB924339EFC9552AE9D5B94F3ADF4D8BB356F7FB1AE5F09557B1ADD28CB0BDBF240C07135E6132FFCD9FF904F3C5BCAC70832859E284E5591DF6F1E1D1B1F43E677FDECA3849E2F99AB3AAE9C18C38665B48D0A24F28761F51ACA64B6CF09EA4065522D1D7D4C3CF67F67FB256A7595083FF2DFB7C605D279F29F92D85828738C5D67FD5F4CF71F2EBDB4F5B7BFA1AA2BF55AFFFFD256F7A60DDC530634EAD43C996EB8CB0F84662903679D30DB459FBE5C4DB9D50C26B042DAA3421D67F7CB0206C948707A5967F0DD0F3F74355D33E2ED80851F380602CBC514C687A20B00E96F17180073F59F638605867F58F05D651CDF85080D0E160F23381FECB50D972875B8DE658B48D2529B373679AF5463997BBDE9B946CEC8D26BA9A713D006E83ACEA3598F1C6129247DB1D35F9C6A361EF92DAAF9E64BC2F79C575C6C76ED389B79941DC723FF4A74A1CDE8354374DEACEEED383B7CD35532877CF732C872501EF19D98A84AEDDA7FA6E9B6CA630EF9E936D5042EF9E716D57FBE78E99D67B0BDD797AAE9A6964B892D1C582BBD26FF3C0399CF017219020F728F35793FA7C2F93B09A2C46817515B35073A2992C5899388A5CA546BBD8617D2D36FCD6CE1675DAC51AD233DB6417EB7FABECA24EBB6C43D2E32E1287B56987BA64EE8E75AC2D1BEA2D250A0B3DE9C84BEFF2595BEFD7DF525EF0284611668FE18EF8EDA4018F629231A7CE80B45FF5BA17F6CEC63FBA08FB7742563504FF27182976855DB3AA734D9761B9794B1A9555A408CD0D66C8832DF53C6664895C06C53CC69C3DFBCEE276FCA66381BD6B7A97B22865D0651C2C7C21E0C59D8036F9596EB3A8F3F42ECAFE059331BA006A121E9BBFA33FA7C4F72ABDAF3431210304F72E8A882E1F4BC623BBAB970AE936A43D810AF3554ED1030E221FC0923B3A474F781DDD807E1FF10AB92F7504D004D23D10A2D9A71704AD6214240546DD1E7E0287BDE0F9C7FF03E11BD6A07B540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'd3d6e97b-48f0-411c-90ff-691ea0d2273e', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3660412d-cef9-42f2-86af-1d4a22d5ff04', N'HRAdmin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a3d3e8e8-d64d-4b33-a36a-11fc3d8f66c0', N'Technician')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'881e7a3b-0e2c-4c19-9a6d-596049b961e4', N'User')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'127e1dc4-73e3-4bb9-a4b0-44c5377d7742', N'3660412d-cef9-42f2-86af-1d4a22d5ff04')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3ba2ab1-6097-4539-9715-784130d7ff80', N'3660412d-cef9-42f2-86af-1d4a22d5ff04')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'abab15cd-8638-4792-ba45-0cb720167a4c', N'3660412d-cef9-42f2-86af-1d4a22d5ff04')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b5040d7a-d66d-48e1-bfa7-ae8c874ce835', N'881e7a3b-0e2c-4c19-9a6d-596049b961e4')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'08bf6b9d-7759-4c2c-96b1-851c865143e6', N'a3d3e8e8-d64d-4b33-a36a-11fc3d8f66c0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dcf7f69a-b5ba-44a2-a43f-c72af696cca9', N'a3d3e8e8-d64d-4b33-a36a-11fc3d8f66c0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'127e1dc4-73e3-4bb9-a4b0-44c5377d7742', N'd3d6e97b-48f0-411c-90ff-691ea0d2273e')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e72864f2-255b-4592-96a8-9a65dc2fc8fb', N'd3d6e97b-48f0-411c-90ff-691ea0d2273e')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'08bf6b9d-7759-4c2c-96b1-851c865143e6', N'Jim@gmail.com', 0, N'AJw+r8NSCKJ8mXLNDq+pUBqAmGT5p/Ywu6ujj041lHDazDIYwLat+iqAxGt9EGvmtg==', N'9dbceb48-e2b0-45fb-b99a-579ca12f8249', NULL, 0, 0, NULL, 1, 0, N'Jim@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'127e1dc4-73e3-4bb9-a4b0-44c5377d7742', N'KJones@gmail.com', 0, N'AE+wcu6rbEW+vTfC8NlPAXS3W3D/2oG3enHyGvRMkYhjqmjZ9hGrrz+L/4Wp3YDTYQ==', N'71af2451-8825-45a3-8934-a68f596028cb', NULL, 0, 0, NULL, 1, 0, N'KJones@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a3ba2ab1-6097-4539-9715-784130d7ff80', N'melissa@gmail.com', 0, N'AEHN6MZufDxjZsTNKEJVN2iSC0TlM0egZ8dhzT69tJb/FA5I01meOh4/65IsZNBHLQ==', N'77590866-dde8-4705-aa61-4014d188a83f', NULL, 0, 0, NULL, 1, 0, N'melissa@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'abab15cd-8638-4792-ba45-0cb720167a4c', N'JSmith@gmail.com', 0, N'ALbdqvN9p+xu7CvgECsTvdhnJGyImVheLYqRMOEJeUfiZjZQ9P+phlrMtqiBQ3KV2w==', N'9eb72421-00b1-4699-8721-87d81385b391', NULL, 0, 0, NULL, 1, 0, N'JSmith@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b5040d7a-d66d-48e1-bfa7-ae8c874ce835', N'MPalmer@gmail.com', 0, N'ADzh7Ymb9FA7G9BaqTg1TL9KiiXsorDCb+p5bMIy5pd+OSxd/YS6OpBXb3vDK5i38A==', N'f6aab89c-44ab-4530-a233-ebdd0a2c67e9', NULL, 0, 0, NULL, 1, 0, N'MPalmer@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dcf7f69a-b5ba-44a2-a43f-c72af696cca9', N'BOlson@gmail.com', 0, N'AKBRbrdzhqRnVhYvW3RbZLFKBJWDJuyS+yc3kUpWa06s+ozyHK0tcm2xHE3BlFm6WA==', N'ab1fcb70-21e9-49a1-a6cd-0b239824db6e', NULL, 0, 0, NULL, 1, 0, N'BOlson@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e72864f2-255b-4592-96a8-9a65dc2fc8fb', N'SJacobs@gmail.com', 0, N'AOU6V/YSXyJ+uA2aB5X6j7S4kje3NMea6UUcAY9a9BcciFnSqf9CplM79fGhIvQ/Vg==', N'f1f1f02c-124c-4dea-baaa-7d43419cf289', NULL, 0, 0, NULL, 1, 0, N'SJacobs@gmail.com')
SET IDENTITY_INSERT [dbo].[TSTDepartments] ON 

INSERT [dbo].[TSTDepartments] ([DeptID], [DeptName], [DeptDesc], [IsActive]) VALUES (1, N'Human Resources', N'No Description', 0)
INSERT [dbo].[TSTDepartments] ([DeptID], [DeptName], [DeptDesc], [IsActive]) VALUES (2, N'Service ', N'Consists of all Service Technicians ', 1)
INSERT [dbo].[TSTDepartments] ([DeptID], [DeptName], [DeptDesc], [IsActive]) VALUES (3, N'Administration', N'No Description', 1)
INSERT [dbo].[TSTDepartments] ([DeptID], [DeptName], [DeptDesc], [IsActive]) VALUES (4, N'Management', N'No Description', 1)
INSERT [dbo].[TSTDepartments] ([DeptID], [DeptName], [DeptDesc], [IsActive]) VALUES (5, N'Sales', N'No description', 1)
SET IDENTITY_INSERT [dbo].[TSTDepartments] OFF
SET IDENTITY_INSERT [dbo].[TSTEmployees] ON 

INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (1, N'John', N'Smith', N' 10145 W. 154th St. ', NULL, N'Olathe', N'KS', N'66062', N'913-558-9795', NULL, N'JSmith@gmail.com', 1, N'2f37d0ca-ea7d-4132-a70a-725e24e0a0bb.jpg', CAST(0x69D80000 AS SmallDateTime), CAST(0xA0520000 AS SmallDateTime), NULL, 1, N'Human Resources Manager', NULL, NULL)
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (2, N'Bob', N'Olson', N'15533 S. 105th Terr', NULL, N'Overland Park', N'KS', N'66212', N'913-554-3701', NULL, N'BOlson@gmail.com', 2, N'52b897cc-5c99-46c5-99a9-b3f0165f8509.jpg', CAST(0x7A700000 AS SmallDateTime), CAST(0x9AC50000 AS SmallDateTime), NULL, 1, N'Service Technician', NULL, NULL)
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (3, N'Steve', N'Jacobs', N'13795 E. 75th st. ', NULL, N'Merriam', N'KS', N'66213', N'913-559-7170', NULL, N'SJacobs@gmail.com', 3, N'cd667ae4-f5d9-4dd2-9ba3-f22a3a785723.jpg', CAST(0x75E10000 AS SmallDateTime), CAST(0x79070000 AS SmallDateTime), NULL, 1, N'IT Guy', NULL, NULL)
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (4, N'Kathy', N'Jones', N'7501 W. 95th St', NULL, N'Overland Park', N'KS', N'66212', N'913-360-4569', NULL, N'KJones@gmail.com', 3, N'060b16d4-1470-4079-b7fa-05ce4a4dd580.jpg', CAST(0x677D0000 AS SmallDateTime), CAST(0x9DF00000 AS SmallDateTime), NULL, 1, N'CEO ', NULL, N'127e1dc4-73e3-4bb9-a4b0-44c5377d7742')
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (5, N'Mark', N'Palmer', N'8702 W. 87th St. ', NULL, N'Overland Park', N'KS', N'66212', N'913-890-5785', NULL, N'MPalmer@gmail.com', 5, N'82009731-a93e-4a6e-a9e9-4098d5cc072f.jpg', CAST(0x6D500000 AS SmallDateTime), CAST(0xA2C90000 AS SmallDateTime), NULL, 1, N'Sales Manager', NULL, N'b5040d7a-d66d-48e1-bfa7-ae8c874ce835')
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (6, N'Melissa', N'Ogle', N'16145 W. 156th Pl', NULL, N'Olathe', N'KS', N'66062', N'9135589796', N'9135589796', N'melissa@gmail.com', 1, N'5976638f-c21a-4049-9990-3930a009bf81.jpg', CAST(0x639B0000 AS SmallDateTime), CAST(0xA1470000 AS SmallDateTime), NULL, 1, N'HR Rep in Training', NULL, NULL)
INSERT [dbo].[TSTEmployees] ([EmpID], [fname], [lname], [address1], [address2], [City], [State], [zip], [phone1], [phone2], [Email], [DeptID], [Image], [DOB], [HireDate], [SeparationDate], [IsActive], [JobTitle], [Notes], [UserID]) VALUES (7, N'Jim', N'Carter', N'1004 N. 51st', NULL, N'Kansas City', N'MO', N'60052', N'816-681-3352', NULL, N'Jim@gmail.com', 2, N'181010e6-de88-4b9b-b6b1-e0a72a157202.jpg', CAST(0xA4510000 AS SmallDateTime), CAST(0xA6740000 AS SmallDateTime), NULL, 1, N'Jr. Service Technician', NULL, N'08bf6b9d-7759-4c2c-96b1-851c865143e6')
SET IDENTITY_INSERT [dbo].[TSTEmployees] OFF
SET IDENTITY_INSERT [dbo].[TSTTicketNotes] ON 

INSERT [dbo].[TSTTicketNotes] ([TicketNotesID], [NotationDate], [TicketID], [EmpID], [Notation]) VALUES (3, CAST(0xA67F0000 AS SmallDateTime), 1001, 2, N'Open ')
INSERT [dbo].[TSTTicketNotes] ([TicketNotesID], [NotationDate], [TicketID], [EmpID], [Notation]) VALUES (7, CAST(0xA67F0000 AS SmallDateTime), 1004, 2, N'in process')
INSERT [dbo].[TSTTicketNotes] ([TicketNotesID], [NotationDate], [TicketID], [EmpID], [Notation]) VALUES (8, CAST(0xA67F0000 AS SmallDateTime), 1005, 2, N'xx')
INSERT [dbo].[TSTTicketNotes] ([TicketNotesID], [NotationDate], [TicketID], [EmpID], [Notation]) VALUES (11, CAST(0xA67F0000 AS SmallDateTime), 1006, 2, N'xx')
INSERT [dbo].[TSTTicketNotes] ([TicketNotesID], [NotationDate], [TicketID], [EmpID], [Notation]) VALUES (1003, CAST(0xA6880274 AS SmallDateTime), 1001, 3, N'Job completed on 9/16/16.')
SET IDENTITY_INSERT [dbo].[TSTTicketNotes] OFF
SET IDENTITY_INSERT [dbo].[TSTTickets] ON 

INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (1001, 3, CAST(0xA67F0000 AS SmallDateTime), 1, CAST(0xA6830000 AS SmallDateTime), N'Help! The sprinkler system went off in my office and I don''t know what to do!!', 2)
INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (1004, 1, CAST(0xA67F0000 AS SmallDateTime), 5, NULL, N'I need a wall built between myself and my crazy neighbor.', 7)
INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (1005, 3, CAST(0xA67F0000 AS SmallDateTime), 7, CAST(0xA6800000 AS SmallDateTime), N'Lawn needs fertilizer', 2)
INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (1006, 4, CAST(0xA67F0000 AS SmallDateTime), 5, NULL, N'I need a great big wall built', NULL)
INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (2002, 1, CAST(0xA6860000 AS SmallDateTime), 6, NULL, N'bad battery', 2)
INSERT [dbo].[TSTTickets] ([TicketID], [StatusID], [SubmissionDate], [SubmittedByID], [CompletedDate], [TicketDesc], [AssignedTechID]) VALUES (2003, 1, CAST(0xA68802ED AS SmallDateTime), 1, NULL, N'Please help, the microwave in the kitchen is on fire!', NULL)
SET IDENTITY_INSERT [dbo].[TSTTickets] OFF
SET IDENTITY_INSERT [dbo].[TSTTicketStatuses] ON 

INSERT [dbo].[TSTTicketStatuses] ([StatusID], [StatusName], [StatusDesc]) VALUES (1, N'Pending', N'New ticket not yet assigned')
INSERT [dbo].[TSTTicketStatuses] ([StatusID], [StatusName], [StatusDesc]) VALUES (2, N'Assigned', N'Assigned to a tech, work has not started')
INSERT [dbo].[TSTTicketStatuses] ([StatusID], [StatusName], [StatusDesc]) VALUES (3, N'Resolved', N'Problem resolved and ticket closed')
INSERT [dbo].[TSTTicketStatuses] ([StatusID], [StatusName], [StatusDesc]) VALUES (4, N'On Hold', N'Ticket on hold status')
INSERT [dbo].[TSTTicketStatuses] ([StatusID], [StatusName], [StatusDesc]) VALUES (1002, N'In Process', N'Currently being worked')
SET IDENTITY_INSERT [dbo].[TSTTicketStatuses] OFF
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTEmployees_TSTDepartments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTEmployees]'))
ALTER TABLE [dbo].[TSTEmployees]  WITH CHECK ADD  CONSTRAINT [FK_TSTEmployees_TSTDepartments] FOREIGN KEY([DeptID])
REFERENCES [dbo].[TSTDepartments] ([DeptID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTEmployees_TSTDepartments]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTEmployees]'))
ALTER TABLE [dbo].[TSTEmployees] CHECK CONSTRAINT [FK_TSTEmployees_TSTDepartments]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes]  WITH CHECK ADD  CONSTRAINT [FK_TSTTicketNotes_TSTEmployees] FOREIGN KEY([EmpID])
REFERENCES [dbo].[TSTEmployees] ([EmpID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes] CHECK CONSTRAINT [FK_TSTTicketNotes_TSTEmployees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTTickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes]  WITH CHECK ADD  CONSTRAINT [FK_TSTTicketNotes_TSTTickets] FOREIGN KEY([TicketID])
REFERENCES [dbo].[TSTTickets] ([TicketID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTicketNotes_TSTTickets]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTicketNotes]'))
ALTER TABLE [dbo].[TSTTicketNotes] CHECK CONSTRAINT [FK_TSTTicketNotes_TSTTickets]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets]  WITH CHECK ADD  CONSTRAINT [FK_TSTTickets_TSTEmployees] FOREIGN KEY([SubmittedByID])
REFERENCES [dbo].[TSTEmployees] ([EmpID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] CHECK CONSTRAINT [FK_TSTTickets_TSTEmployees]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees1]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets]  WITH CHECK ADD  CONSTRAINT [FK_TSTTickets_TSTEmployees1] FOREIGN KEY([AssignedTechID])
REFERENCES [dbo].[TSTEmployees] ([EmpID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTEmployees1]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] CHECK CONSTRAINT [FK_TSTTickets_TSTEmployees1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTTicketStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets]  WITH CHECK ADD  CONSTRAINT [FK_TSTTickets_TSTTicketStatuses] FOREIGN KEY([StatusID])
REFERENCES [dbo].[TSTTicketStatuses] ([StatusID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TSTTickets_TSTTicketStatuses]') AND parent_object_id = OBJECT_ID(N'[dbo].[TSTTickets]'))
ALTER TABLE [dbo].[TSTTickets] CHECK CONSTRAINT [FK_TSTTickets_TSTTicketStatuses]
GO
