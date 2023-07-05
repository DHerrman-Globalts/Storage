sc stop ltsvcmon

sc stop ltservice

timeout /T 60 /NOBREAK

taskkill /im ltsvc.exe /f

%windir%\temp\Agent_Uninstall.exe

timeout /T 60 /NOBREAK

%windir%\temp\Agent_Install.exe /q

timeout /T 180 /NOBREAK

sc start ltservice

sc start ltsvcmon