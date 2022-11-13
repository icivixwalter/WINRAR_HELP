:--------------------2 PARAMETRI = qui la path inizio e fine
@SET path_inizio_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\70_ATTI_GENERICI\
@echo %path_inizio_s%

@REM @SET path_fine_s=%CD%
@SET path_fine_s=y:\LAVORI_PUBBLICI_FINO_AL_30_09_2019\Valter\OPERE_PUBBLICHE\ZZ99_SALVATAGGI_BACKUP\SALVATAGGI\70_ATTI_GENERICI\


:--------------------2 PARAMETRI = il mese di inizio e fine
@SET anno_inizio_i=1980
@SET anno_fine_i=2022

:--------------------Attiva java exe con 4 parametri (puoi omettere anche il 4, prende l'anno corrente)
ComprimiPerMese.exe %path_inizio_s% %path_fine_s% %anno_inizio_i% %anno_fine_i%

pause