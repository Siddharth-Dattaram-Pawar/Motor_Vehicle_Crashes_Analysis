USE [Final_Project]
GO

/****** Object:  Table [dbo].[stg_cleaned_ny_data]    Script Date: 4/14/2024 4:26:51 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_cleaned_ny_data](
	[Record_ID] [varchar](50) NULL,
	[COLLISION_ID] [varchar](25) NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [varchar](10) NULL,
	[Hour] [int] NULL,
	[BOROUGH] [varchar](40) NULL,
	[ZIP_CODE] [varchar](8) NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](40) NULL,
	[ON_STREET_NAME] [varchar](50) NULL,
	[CROSS_STREET_NAME] [varchar](50) NULL,
	[OFF_STREET_NAME] [varchar](50) NULL,
	[NUMBER_OF_PERSONS_INJURED] [int] NULL,
	[NUMBER_OF_PERSONS_KILLED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_INJURED] [int] NULL,
	[NUMBER_OF_PEDESTRIANS_KILLED] [int] NULL,
	[NUMBER_OF_CYCLIST_INJURED] [int] NULL,
	[NUMBER_OF_CYCLIST_KILLED] [int] NULL,
	[NUMBER_OF_MOTORIST_INJURED] [int] NULL,
	[NUMBER_OF_MOTORIST_KILLED] [int] NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_1] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_2] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_3] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_4] [varchar](100) NULL,
	[CONTRIBUTING_FACTOR_VEHICLE_5] [varchar](100) NULL,
	[contrib_factor_id] [varchar](10) NULL,
	[ny_contribution_factor] [varchar](500) NULL,
	[contribution_factor] [varchar](500) NULL,
	[VEHICLE_TYPE_CODE_1] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_2] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_3] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_4] [varchar](100) NULL,
	[VEHICLE_TYPE_CODE_5] [varchar](100) NULL,
	[concat_vehicle_type] [varchar](100) NULL,
	[Source_Name] [varchar](25) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_JobID] [varchar](50) NULL
) ON [PRIMARY]
GO

