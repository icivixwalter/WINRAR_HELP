goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA



@ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
:------------------------------dove si trova il file lista.txt nella path corrente
@SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file
@SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\





:------------------------------NOME FILE PROFESSATO
@SET FileRar= 1_ES_ARCHIVIO_OPZIONE_Ta.RAR 

@REM 1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
@REM PROCESSAMENTO FILE con l'opzione -ta = successivi AFTER al 11-10-2022 
@REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path
@REM    
c:\CASA\WinRAR\Rar.exe a -ta2022-8-5 %FileRar% @Listafile.txt



:------------------------------NOME FILE PROFESSATO
@SET FileRar2= 2_ES_ARCHIVIO_OPZIONE_Ta_Tb.RAR 
@REM 2 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
@REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path 
@REM    con data AFTER  ta2022-11-07 ALLA DATA tb2022-11-13 
c:\CASA\WinRAR\Rar.exe a -ta2022-05-07 -tb2022-05-23 %FileRar2% @Listafile.txt



:------------------------------NOME FILE PROCESSATO
@SET FileRar3= 3_ES_ARCHIVIO_OPZIONE_TaC_TbC.RAR 
@REM 3 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE + OPZIONI DATA DI CREAZIONE
@REM.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path 
@REM    con data DI CREAZIONE AFTER " -ta2022-11-07 ALLA DATA DI CREAZIONE BEFORE -tb2022-11-13 "
c:\CASA\WinRAR\Rar.exe a -taC2022-02-01 -tbC2022-02-14 %FileRar3% @Listafile.txt



         
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



