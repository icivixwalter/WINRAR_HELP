goto NOTA

@REM ---MODELLO------>  WinRAR  <command> -<switch1> -<switchN> <archive> <files...> <@listfiles...> <path_to_extract\>



:NOTA



@ESEMPIO LISTA FILE.TXT CON PATH COMPRESE
:------------------------------dove si trova il file lista.txt nella path corrente
@SET PathOrigine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\BAT_RAR_LISTA_FILE\
:------------------------------dove si trovano i file
@SET PathOrigineII_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\






:------------------------------NOME FILE PROCESSATO DAL 10 MARZO A SETTEMBRE
@SET FileRar1=1_ES_ARCHIVIO_OPZIONE_TaC_TbC.RAR 
@SET FileRar2=2_ES_ARCHIVIO_OPZIONE_TaC_TbC.RAR 


@REM solo NOVEMBRE e con parametri tacm = After creazione e modifica + tbcm before la data di modifica e di creazione - controlla i vari effetti 
REM 
c:\CASA\WinRAR\Rar.exe U -tsm1 -tsc1  -log="%FileRar2%elencovolumi.txt" -logf="%FileRar2%_elencofile.txt" -TaM2022:11:1 -TBMC2022:11:30 %FileRar2% @ZIP_RAR_N03_DATA_TAC-TBC_Listafile.txt

         
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



