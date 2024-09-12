USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_contribution_factor]    Script Date: 4/14/2024 4:22:45 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_contribution_factor](
	[scd_start] [date] NULL,
	[scd_end] [date] NULL,
	[scd_version] [int] NULL,
	[scd_active] [bit] NULL,
	[contribution_factor_sk] [int] IDENTITY(1,1) NOT NULL,
	[contribution_factor] [nvarchar](500) NULL,
	[contrib_factor_id] [nvarchar](50) NULL,
	[DI_ProcessID] [nvarchar](100) NULL,
	[DI_WorkflowName] [nvarchar](100) NULL,
	[DI_CreatedDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[contribution_factor_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

