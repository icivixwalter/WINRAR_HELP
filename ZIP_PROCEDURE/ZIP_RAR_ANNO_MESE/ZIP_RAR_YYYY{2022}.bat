@REM nella directory corrente 

@REM..........................tutto nella directory corrente 
c:\CASA\WinRAR\Rar.exe a   -ag+YYYY{2022} _copia_ANNO  *.* 

@REM..........................tutto nella directory corrente comprese i nuovi compressi
c:\CASA\WinRAR\Rar.exe  a -ag+YYYYMMDDHHMM _copia_yyymmddhm

@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



