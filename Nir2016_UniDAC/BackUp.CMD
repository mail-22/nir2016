@echo Off
echo ---------------------------
echo   SVS BackUp batch
echo ---------------------------
@echo On

rem set backup_lst="c:\Program Files\Borland\Delphi6\SVS_lib\SVS" 

set tmpName=inquest 
set backupDir=e:\BackUp\inquest 

REM set xlist_lst=~*.* *.~* *.bak *.dcu *.exe _qsq*.* *.map 
REM *.rar *.res
REM set xlist_lst=*.exe 
set xlist_lst=*.bak

REM set TypeArc=zip REM -afzip
set TypeArc=rar

REM -tn1d2h30m REM Switch -TN<time> - process files newer than the specified time

start /wait D:\Progra~1\WinRAR\WinRAR.exe a -af%TypeArc% -m5 -rr2p -r -s -y -EP2 -av -x%xlist_lst% -x@xlist.lst -ag_YYMMDD_HHMMSS "%temp%\%tmpName%" *.* %backup_lst% @backup.lst
REM -m5 REM -m0

rem mkdir "..\_sources"
mkdir "%backupDir%"
rem mkdir f:\"%backupDir%"
rem mkdir \\"MyNetDir\%backupDir%"

copy /y "%temp%\%tmpName%*.%TypeArc%" "%backupDir%"
rem copy /y "%temp%\%tmpName%*.%TypeArc%" f:\"%backupDir%"
rem copy /y "%temp%\%tmpName%*.%TypeArc%" "..\_sources"
rem copy /y "%temp%\%tmpName%*.%TypeArc%" \\"MyNetDir\%backupDir%"

del "%temp%\%tmpName%*.%TypeArc%"

start "%backupDir%"
rem start "..\_sources"
rem start \\"MyNetDir\%backupDir%"

set tmpName=
set backupDir=
REM pause
pause





rem D:\Program Files\Borland\Delphi6\SVS_lib\SVS

rem Switch -EP2  -  expand paths to full
rem Store full file paths (except a drive letter and leading backslash) when archiving.

rem start /w winrar a -r -y -ag_YYMMDD_HHMM -x.\Data\*.* -x@.\xlist.lst "%temp%\%tmpName%" %1

rem pause D:\Program Files\WinRAR\WinRAR.exe
rem pause D:\Progra~1\WinRAR\WinRAR.exe


