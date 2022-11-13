
@rem .........dove si trova il file lista.txt
@SET path_FileLISTA_s=%c%

@rem sia il bat che la lista file si deve trovare nella stessa directory
cd %path_FileLISTA_s%
c:\CASA\WinRAR\Rar.exe a -r -n@ZIP_RAR_ListaFile_ARCHIVIO_70.txt text Project Info




          
@REM Ritardo per 7 secondi
@choice /C:X /N /T:3 /D:X > NUL		



