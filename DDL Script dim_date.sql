USE [Final_Project]
GO

/****** Object:  Table [dbo].[dim_date]    Script Date: 4/14/2024 4:23:22 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dim_date](
	[date_sk] [int] NOT NULL,
	[day_str] [varchar](10) NOT NULL,
	[year] [int] NOT NULL,
	[quarter] [varchar](5) NOT NULL,
	[month] [int] NOT NULL,
	[month_str] [varchar](255) NOT NULL,
	[is_weekend] [char](1) NOT NULL,
	[is_weekday] [char](1) NOT NULL,
	[date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[date_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

