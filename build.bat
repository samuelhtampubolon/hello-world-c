@echo off
setlocal

where cl >nul 2>&1
if %errorlevel%==0 (
  cl /nologo /W3 /O2 /Fe:hello.exe hello.c
  goto :done
)

where gcc >nul 2>&1
if %errorlevel%==0 (
  gcc -Wall -Wextra -O2 -o hello.exe hello.c
  goto :done
)

echo No C compiler found. Install Visual Studio Build Tools or MinGW-w64.
exit /b 1

:done
if exist hello.exe (
  echo.
  echo Built hello.exe
  echo Run it with: hello.exe
) else (
  echo Build failed.
  exit /b 1
)
