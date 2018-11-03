DECLARE @N1 int , @N2 int, @N3 int;
DECLARE @MAX int;
SET @N1 = 60 * rand();
SET @N2 = 60 * rand();
SET @N3 = 60 * rand();
SET @MAX = @N1;
IF @MAX < @N2
   SET @MAX = @N2;
IF @MAX < @N3
   SET @MAX = @N3;

print @N1;
print @N2;
print @N3;
print 'Max = ' + cast(@MAX as varchar(2));