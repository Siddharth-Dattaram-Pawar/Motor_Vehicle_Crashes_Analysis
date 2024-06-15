USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_time]    Script Date: 4/14/2024 4:24:59 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_time](
	[Hour] [int] NULL,
	[time_sk] [int] NOT NULL,
	[time_period] [varchar](50) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](100) NULL,
	[DI_ProcessID] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[time_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

