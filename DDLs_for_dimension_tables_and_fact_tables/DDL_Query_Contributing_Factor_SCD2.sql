CREATE TABLE dim_contribution_factor (
    scd_start DATE,
    scd_end DATE,
    scd_version INT,
    scd_active BIT, 
    contribution_factor_sk INT IDENTITY (1,1) PRIMARY KEY,
	contribution_factor NVARCHAR(500),
    contrib_factor_id NVARCHAR(50), 
    DI_ProcessID NVARCHAR(100), 
    DI_WorkflowName NVARCHAR(100), 
    DI_CreatedDate DATE
);
