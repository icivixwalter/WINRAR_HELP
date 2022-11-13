goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA



@ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
:------------------------------dove si trova il file lista.txt nella path corrente
@SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file
@SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\


:------------------------------NOME FILE PROFESSATO
@SET FileRar= ARCHIVIO_01_PATH_ESTERNA.RAR 



@REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
@REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
@REM    
c:\CASA\WinRAR\Rar.exe a %FileRar% @Listafile.txt


         
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



