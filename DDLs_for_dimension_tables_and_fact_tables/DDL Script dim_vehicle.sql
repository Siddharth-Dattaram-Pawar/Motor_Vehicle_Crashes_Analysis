USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_vehicle]    Script Date: 4/14/2024 4:25:28 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_vehicle](
	[vehicle_ID] [varchar](25) NOT NULL,
	[vehicle_type] [varchar](1000) NULL,
	[vehicle_speed] [int] NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_WorkflowName] [varchar](50) NULL,
	[DI_ProcessID] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[vehicle_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

