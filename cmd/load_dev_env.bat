@echo off
if not exist "%USERPROFILE%\dev.env" exit /b 0
for /f "usebackq eol=# tokens=1,* delims==" %%A in ("%USERPROFILE%\dev.env") do (
    if not "%%A"=="" set "%%A=%%B"
)
