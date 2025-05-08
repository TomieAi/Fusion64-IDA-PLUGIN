@echo off
setlocal

REM —————————————————————————————————————————————————————————
REM 1) locate vswhere.exe (shipped with VS Installer)
set "VSWHERE=%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\vswhere.exe"
if not exist "%VSWHERE%" (
  echo ERROR: vswhere.exe not found at "%VSWHERE%"
  goto :EOF
)

REM get the latest VS2022 installation path that has MSBuild
for /f "usebackq tokens=*" %%I in (`"%VSWHERE%" -latest -prerelease -requires Microsoft.Component.MSBuild -property installationPath`) do (
  set "VSINSTALL=%%I"
)

if not defined VSINSTALL (
  echo ERROR: No Visual Studio 2022 with MSBuild found.
  goto :EOF
)

REM —————————————————————————————————————————————————————————
REM 2) call the VS Dev Command‑Prompt script to set env vars
call "%VSINSTALL%\Common7\Tools\VsDevCmd.bat" >nul

REM —————————————————————————————————————————————————————————
REM 3) pick up arguments or defaults
set "SOLUTION=%~1"
if "%SOLUTION%"=="" set "SOLUTION=Fusion64.sln"

set "CONFIG=%~2"
if "%CONFIG%"=="" set "CONFIG=Release"

set "PLATFORM=%~3"
if "%PLATFORM%"=="" set "PLATFORM=x64"

echo Building "%SOLUTION%" Configuration=%CONFIG% Platform=%PLATFORM%
echo.

REM —————————————————————————————————————————————————————————
REM 4) run MSBuild
msbuild "%SOLUTION%" /t:Rebuild /p:Configuration=%CONFIG% /p:Platform=%PLATFORM%

endlocal
