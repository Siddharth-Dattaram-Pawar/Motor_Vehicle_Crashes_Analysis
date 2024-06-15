USE [Final_Project]
GO

/****** Object:  Table [dbo].[stg_cleaned_austin_data]    Script Date: 4/14/2024 4:25:58 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_cleaned_austin_data](
	[Record_ID] [varchar](15) NULL,
	[crash_id] [varchar](20) NULL,
	[crash_fatal_fl] [varchar](2) NULL,
	[crash_date] [datetime] NULL,
	[crash_date_actual] [datetime] NULL,
	[crash_time] [varchar](10) NULL,
	[Hour] [int] NULL,
	[case_id] [varchar](30) NULL,
	[rpt_latitude] [real] NULL,
	[rpt_longitude] [real] NULL,
	[latitude] [real] NULL,
	[longitude] [real] NULL,
	[rpt_block_num] [varchar](15) NULL,
	[rpt_street_pfx] [varchar](5) NULL,
	[rpt_street_name] [varchar](60) NULL,
	[rpt_street_sfx] [varchar](8) NULL,
	[street_nbr] [varchar](8) NULL,
	[street_name] [varchar](50) NULL,
	[street_name_2] [varchar](50) NULL,
	[street_nbr_2] [varchar](5) NULL,
	[crash_speed_limit] [int] NULL,
	[road_constr_zone_fl] [varchar](2) NULL,
	[crash_sev_id] [int] NULL,
	[sus_serious_injry_cnt] [int] NULL,
	[nonincap_injry_cnt] [int] NULL,
	[poss_injry_cnt] [int] NULL,
	[non_injry_cnt] [int] NULL,
	[unkn_injry_cnt] [int] NULL,
	[tot_injry_cnt] [int] NULL,
	[death_cnt] [int] NULL,
	[contrib_factr_p1_id] [int] NULL,
	[contrib_factr_p2_id] [int] NULL,
	[contrib_factor_id] [varchar](100) NULL,
	[austin_contribution_factor] [varchar](500) NULL,
	[contribution_factor] [varchar](500) NULL,
	[units_involved_actual] [varchar](500) NULL,
	[units_involved] [varchar](500) NULL,
	[atd_mode_category_metadata] [varchar](6500) NULL,
	[pedestrian_fl] [varchar](3) NULL,
	[motor_vehicle_fl] [varchar](3) NULL,
	[motorcycle_fl] [varchar](3) NULL,
	[bicycle_fl] [varchar](3) NULL,
	[other_fl] [varchar](3) NULL,
	[point] [varchar](50) NULL,
	[apd_confirmed_fatality] [varchar](3) NULL,
	[apd_confirmed_death_count] [int] NULL,
	[motor_vehicle_death_count] [int] NULL,
	[motor_vehicle_serious_injury_count] [int] NULL,
	[bicycle_death_count] [int] NULL,
	[bicycle_serious_injury_count] [int] NULL,
	[pedestrian_death_count] [int] NULL,
	[pedestrian_serious_injury_count] [int] NULL,
	[motorcycle_death_count] [int] NULL,
	[motorcycle_serious_injury_count] [int] NULL,
	[other_death_count] [int] NULL,
	[other_serious_injury_count] [int] NULL,
	[onsys_fl] [varchar](3) NULL,
	[private_dr_fl] [varchar](3) NULL,
	[micromobility_serious_injury_count] [int] NULL,
	[micromobility_death_count] [int] NULL,
	[micromobility_fl] [varchar](3) NULL,
	[Source_Name] [varchar](25) NULL,
	[DI_CreatedDate] [datetime] NULL,
	[DI_JobID] [varchar](25) NULL
) ON [PRIMARY]
GO

