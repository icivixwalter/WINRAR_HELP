goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA



@ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
:------------------------------dove si trova il file lista.txt nella path corrente
@SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file
@SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\





:------------------------------NOME FILE PROFESSATO
@SET FileRar1= 1_ES_ARCHIVIO_OPZIONE_Ta.RAR 

@REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
@REM PROCESSAMENTO FILE con l'opzione -ta = successivi AFTER al 11-10-2022 
@REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
@REM    


rem c:\CASA\WinRAR\Rar.exe  	a -r -taMC2022:11:1 -tbM2022:11:30 %FileRar% @ZIP_RAR_N03_DATA_TAC-TBC_Listafile.txt
rem     c:\CASA\WinRAR\Rar.exe  a -ta2022-8-5                      %FileRar% @Listafile.txt  
c:\CASA\WinRAR\Rar.exe  a -r -taMC:2022:10:1 -tbCM:2022:10:30 %FileRar1% @ZIP_RAR_N03_DATA_TAC-TBC_Listafile.txt






         
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



