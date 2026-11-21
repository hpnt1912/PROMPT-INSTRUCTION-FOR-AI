@echo off
chcp 65001 >nul
echo === Cai dat MarkItDown ===
REM Tren Windows, MarkItDown chi cai duoc voi Python 3.13 (64-bit)
py -3.13 --version >nul 2>nul
if errorlevel 1 (
  echo Chua co Python 3.13 tren may.
  echo Tai "Windows installer (64-bit)" cua Python 3.13.x tai https://www.python.org/downloads/windows/
  echo Nho tick "Add python.exe to PATH".
  pause
  exit /b 1
)
py -3.13 --version
py -3.13 -m pip install --upgrade pip
py -3.13 -m pip install --upgrade "markitdown[all]" markitdown-mcp
if errorlevel 1 (
  echo.
  echo CAI DAT LOI. Chup man hinh gui cho Claude.
  pause
  exit /b 1
)
echo.
py -3.13 -m pip show markitdown | findstr /B "Name Version"
echo.
echo Xong! Gio co the dung chuyen-doi.bat
pause
