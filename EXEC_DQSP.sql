USE [QACOP]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[SP_Utility_DQ_Test]

SELECT	'Return Value' = @return_value

GO

select cast(HEALTHPLAN as char(10)) as HEALTHPLAN, cast(TABLENAME as char(10)) as TABLENAME, cast(COLUMNNAME as char(20)) as COLUMNNAME, cast(TEST_SCENARIO as char(30)) as TEST_SCENARIO, cast(SOURCE_COUNT as char(10)) as SOURCE_COUNT,cast(TARGET_COUNT as char(10)) as TARGET_COUNT, cast(STATUS as char(10)) as STATUS, cast(STATUS_DESC as char(160)) as STATUS_DESC, cast(DQ_REMARKS as char(100)) as DQ_REMARKS from SP_UTILITY_DQ_OUTPUT

GO
