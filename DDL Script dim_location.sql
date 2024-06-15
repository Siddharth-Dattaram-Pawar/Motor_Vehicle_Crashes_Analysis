USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_location]    Script Date: 4/14/2024 4:24:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_location](
	[Location_ID] [varchar](50) NOT NULL,
	[city] [varchar](10) NULL,
	[street_name] [varchar](100) NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](50) NULL,
	[DI_ProcessID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Location_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

