:--------------------2 PARAMETRI = qui la path inizio e fine
@SET path_inizio_s=c:\CASA\WinRAR\WIN_RAR_BAT\ZIP_RAR_MANUALI\
@echo %path_inizio_s%

@REM @SET path_fine_s=%CD%
@SET path_fine_s=c:\CASA\WinRAR\

@REM @SET path_fine_s=%CD%
@SET path_fine_s=c:\Casa\WinRAR\WIN_RAR_BAT\ZIP_RAR_MANUALI\

@rem.....................APRO HELP WINRAR
START "APRI" %path_inizio_s%WinRAR.hlp ^& EXIT




