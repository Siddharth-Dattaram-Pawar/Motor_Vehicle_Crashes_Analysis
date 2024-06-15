USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_source]    Script Date: 4/14/2024 4:24:38 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_source](
	[Source_Name] [varchar](25) NULL,
	[Source_ID] [varchar](25) NOT NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](50) NULL,
	[DI_JobID] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Source_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

