

@REM MODELLO DI APERTURA FILE NELLA DIRECTORY CORRENTE con esempio di path relativo o assoluto

@REM apri il file CON LA PATH ASSOLUTA
@REM @START "APRI" /i "g:\Casa\Linguaggi\ACCESS\GESTIONE_MODELLI_OGGETTI\GE_MODELLI_OGGETTI_Access_2000.mdb" &^ exit

Set Path_s=c:\Casa\WinRAR\WIN_RAR_BAT\ZIP_RAR_MANUALI\

@REM con la path relativa apri il file e la directoy senza indicare il disco
START ""  "%Path_s%RAR_MANUALE_ITALIANO.MD" &^ exit


START "APRI CARTELLA" /I "." &^ exit