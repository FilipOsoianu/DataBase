DECLARE @N1 int , @N2 int, @N3 int;
DECLARE @MAX int;
SET @N1 = 60 * rand();
SET @N2 = 60 * rand();
SET @N3 = 60 * rand();
SET @MAX = @N1;
SET @MAX = CASE 
	WHEN  @MAX < @N2 and @N3 < @N2
	THEN  @N2
	WHEN @MAX < @N3 and @N2<@N3
	THEN  @N3
	ELSE @MAX
	END   
print @N1;
print @N2;
print @N3;
print 'Max = ' + cast( @MAX   as varchar(2));