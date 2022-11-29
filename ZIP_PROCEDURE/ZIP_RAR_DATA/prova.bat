goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA







NOTE_BAT_s
"@ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
:------------------------------dove si trova il file lista.txt nella path corrente"
:-----------------COMM= dove si trova il file lista.txt nella path corrente
PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file, PATH DI ORIGINE
PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\
NOME FILE PROCESSATO
FileRar=1_ES_ARCHIVIO_OPZIONE_Ta.RAR
1 ESEMPIO COME PARAMETRI DALLA PATH CORRENTE
PROCESSAMENTO FILE con l'opzione -ta = successivi AFTER al 11-10-2022
.................da pathCorrente il FILE DA PROCESSARE con LISTA FILE compresa path

c:\CASA\WinRAR\Rar.exe  a -r -taMC:2022:10:1 -tbCM:2022:10:30 %FileRar1% @ZIP_RAR_N03_DATA_TAC-TBC_Listafile.txt

         
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



