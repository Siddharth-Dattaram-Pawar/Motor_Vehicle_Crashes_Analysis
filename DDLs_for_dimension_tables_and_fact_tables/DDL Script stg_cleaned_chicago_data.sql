USE [Final_Project]
GO

/****** Object:  Table [dbo].[stg_cleaned_chicago_data]    Script Date: 4/14/2024 4:26:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_cleaned_chicago_data](
	[Record_ID] [varchar](25) NULL,
	[CRASH_RECORD_ID] [varchar](200) NULL,
	[CRASH_DATE_EST_I] [varchar](2) NULL,
	[crash_date_string] [varchar](25) NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME_STRING] [varchar](20) NULL,
	[HOUR] [int] NULL,
	[POSTED_SPEED_LIMIT] [int] NULL,
	[TRAFFIC_CONTROL_DEVICE] [varchar](35) NULL,
	[DEVICE_CONDITION] [varchar](35) NULL,
	[WEATHER_CONDITION] [varchar](35) NULL,
	[LIGHTING_CONDITION] [varchar](35) NULL,
	[FIRST_CRASH_TYPE] [varchar](35) NULL,
	[TRAFFICWAY_TYPE] [varchar](35) NULL,
	[LANE_CNT] [varchar](35) NULL,
	[ALIGNMENT] [varchar](35) NULL,
	[ROADWAY_SURFACE_COND] [varchar](35) NULL,
	[ROAD_DEFECT] [varchar](35) NULL,
	[REPORT_TYPE] [varchar](50) NULL,
	[CRASH_TYPE] [varchar](50) NULL,
	[INTERSECTION_RELATED_I] [varchar](3) NULL,
	[NOT_RIGHT_OF_WAY_I] [varchar](3) NULL,
	[HIT_AND_RUN_I] [varchar](3) NULL,
	[DAMAGE] [varchar](50) NULL,
	[DATE_POLICE_NOTIFIED] [datetime] NULL,
	[date_police_notified_actual] [datetime] NULL,
	[PRIM_CONTRIBUTORY_CAUSE] [varchar](150) NULL,
	[SEC_CONTRIBUTORY_CAUSE] [varchar](150) NULL,
	[chicago_contribution_factor] [varchar](300) NULL,
	[contribution_factor] [varchar](500) NULL,
	[contri_factor_id] [varchar](50) NULL,
	[STREET_NO] [int] NULL,
	[STREET_DIRECTION] [varchar](4) NULL,
	[STREET_NAME] [varchar](70) NULL,
	[BEAT_OF_OCCURRENCE] [varchar](8) NULL,
	[PHOTOS_TAKEN_I] [varchar](3) NULL,
	[STATEMENTS_TAKEN_I] [varchar](3) NULL,
	[DOORING_I] [varchar](3) NULL,
	[WORK_ZONE_I] [varchar](3) NULL,
	[WORK_ZONE_TYPE] [varchar](35) NULL,
	[WORKERS_PRESENT_I] [varchar](3) NULL,
	[NUM_UNITS] [int] NULL,
	[MOST_SEVERE_INJURY] [varchar](50) NULL,
	[INJURIES_TOTAL] [int] NULL,
	[INJURIES_FATAL] [int] NULL,
	[INJURIES_INCAPACITATING] [int] NULL,
	[INJURIES_NON_INCAPACITATING] [int] NULL,
	[INJURIES_REPORTED_NOT_EVIDENT] [int] NULL,
	[INJURIES_NO_INDICATION] [int] NULL,
	[INJURIES_UNKNOWN] [int] NULL,
	[CRASH_HOUR] [int] NULL,
	[CRASH_DAY_OF_WEEK] [int] NULL,
	[CRASH_MONTH] [int] NULL,
	[LATITUDE] [real] NULL,
	[LONGITUDE] [real] NULL,
	[LOCATION] [varchar](45) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_JobID] [varchar](50) NULL,
	[Source_Name] [varchar](25) NULL
) ON [PRIMARY]
GO

