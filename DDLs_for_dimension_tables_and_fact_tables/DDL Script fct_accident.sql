USE [Final_Project]
GO

/****** Object:  Table [dbo].[fct_accident]    Script Date: 4/14/2024 4:27:46 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[fct_accident](
	[accident_id] [varchar](50) NOT NULL,
	[Source_ID] [varchar](25) NOT NULL,
	[vehicle_ID] [varchar](25) NOT NULL,
	[Location_ID] [varchar](50) NOT NULL,
	[date_sk] [int] NOT NULL,
	[time_sk] [int] NOT NULL,
	[tot_injury_count] [int] NULL,
	[tot_death_count] [int] NULL,
	[pedestrian_fl] [varchar](3) NULL,
	[pedestrian_death_count] [int] NULL,
	[pedestrian_serious_injury_count] [int] NULL,
	[motorist_killed] [int] NULL,
	[motorist_injured] [int] NULL,
	[crash_id] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[accident_id] ASC,
	[Source_ID] ASC,
	[vehicle_ID] ASC,
	[Location_ID] ASC,
	[date_sk] ASC,
	[time_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

