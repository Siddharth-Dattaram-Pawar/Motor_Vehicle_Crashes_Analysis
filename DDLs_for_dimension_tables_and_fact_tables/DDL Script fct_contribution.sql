USE [Final_Project]
GO

/****** Object:  Table [dbo].[fct_contribution]    Script Date: 4/14/2024 11:53:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fct_contribution](
	[Fct_Contribution_ID] [varchar](15) NOT NULL,
	[contribution_factor_sk] [int] NOT NULL,
	[accident_id] [varchar](50) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](70) NULL,
	[DI_JobID] [varchar](70) NULL,
PRIMARY KEY CLUSTERED 
(
	[Fct_Contribution_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

