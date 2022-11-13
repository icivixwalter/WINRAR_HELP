goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA




:------------------------------dove si trova il file lista.txt nella path corrente
@SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file
@SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\




@REM 1 ESEMPIO SOLO FILE .BAT DOPO IL RAR DALLA PATH CORRENTE
@REM.................da pathCorrente preleva e salva solo questi file e vengono messi dopo 
@REM il file .rar senza indicare la path che è quella corrente
c:\CASA\WinRAR\Rar.exe a 70_ATTI_GENERICI_SALVATAGGI_ES_01_(bat).RAR *.bat 


@REM 2 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
@REM.................da pathCorrente i file diventano parametri e quindi
@REM vengono messi prima DEL FILE.RAR 
c:\CASA\WinRAR\Rar.exe a -n*.bat -n*.txt 70_ATTI_GENERICI_SALVATAGGI_ES_02_(bat-txt).RAR 






@REM 3 ESEMPIO COME PARAMETRI DA UNA DIVERSA PATH ORIGINE
@REM.................da pathCorrente DEVE PRELEVARE IN UNA PATH DIVERSA ed i parametri dei singoli file
@REM vengono messi prima DEL FILE.RAR bisogna aggiungere solo la path di partenza

@REM ..... ti sposti nell'origine e poi salvi
cd %PathOrigine_s%
@REM........pathCorrente ....switch.......archivio.rar....salva nella path in cui ti sei spostato
c:\CASA\WinRAR\Rar.exe a -n*.bat 70_ATTI_GENERICI_SALVATAGGI_ES_03_(pathEsternaDoveTiSposti).RAR  





@REM 4 ESEMPIO PATH CORRENTE DA LISTA FILE

@REM.......TORNI INDIETRO
cd %PathOrigineII_s%

@REM.................da pathCorrente DEVE PRELEVARE IN UNA PATH DIVERSA ed i parametri dei singoli file
@REM vengono messi prima DEL FILE.RAR bisogna aggiungere solo la path di partenza
@REM........pathCorrente ....switch.......archivio.rar.........................path di prelievo
c:\CASA\WinRAR\Rar.exe a -n*.bat -n*.txt 70_ATTI_GENERICI_SALVATAGGI_ES_04_(pathORIGINE).RAR %PathOrigine_s%





          
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



