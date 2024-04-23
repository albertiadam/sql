CREATE TABLE [dbo].[Ugyfel](
	[LOGIN] [nvarchar](255) MASKED WITH (Function = 'partial(1,"XXX",1)'),
	[EMAIL] [nvarchar](255) MASKED WITH (function = 'email()'),
	[NEV] [nvarchar](255) MASKED WITH (Function = 'partial(1,"XXX",1)'),
	[SZULEV] [int] MASKED WITH (FUNCTION = 'random(1,5)'),
	[NEM] [nvarchar](1) NULL,
	[CIM] [nvarchar](255) NULL,
 CONSTRAINT [PK_Ugyfel] PRIMARY KEY CLUSTERED 
(
	[LOGIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]