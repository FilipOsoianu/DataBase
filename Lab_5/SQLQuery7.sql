BEGIN TRY 
	DECLARE @N1 int , @N2 int, @N3 int;
	DECLARE @MAX int;
	SET @N1 = 60 * rand();
	SET @N2 = 60 * rand();
	SET @N3 = 60 * rand();
	SET @MAX = @N1;
	IF @N1 = @N2 or @N1 = @N3 or @N2 = @N3 
		RAISERROR ('Some numbers have the same value', 1,1)
	else
	IF @MAX < @N2
	   SET @MAX = @N2;
	IF @MAX < @N3
	   SET @MAX = @N3;

END TRY
BEGIN CATCH
	PRINT ERROR_NUMBER()
	PRINT ERROR_SEVERITY()
	PRINT ERROR_STATE()
	PRINT ERROR_PROCEDURE()
	PRINT ERROR_LINE()
	PRINT ERROR_MESSAGE()
END CATCH

print @N1;
print @N2;
print @N3;
print 'Max = ' + cast(@MAX as varchar(2));

