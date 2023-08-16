@echo off
set "MsgBoxTitle=No Internet Connection"
set "MsgBoxText=No internet connection detected. Please establish a connection before using this application."
echo msgbox "%MsgBoxText%", vbCritical, "%MsgBoxTitle%" > "%temp%\popup.vbs"

ping 8.8.8.8 -n 1 -w 500 >nul
if %errorlevel% neq 0 (
start "" "%temp%\popup.vbs"


    exit /b 1
) else (
    echo Internet connection established. Opening the application...
	start "" "C:\Program Files (x86)\Texa S.p.A\IDC5\common\bin\Mstart5.exe"
	timeout /t 2 >nul 
   	 exit /b 1

)
