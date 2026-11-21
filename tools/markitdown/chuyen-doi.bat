@echo off
chcp 65001 >nul
setlocal

REM Cach dung:
REM  - Keo 1 FILE tha vao chuyen-doi.bat  -> tao file .md canh file do
REM  - Keo 1 THU MUC tha vao chuyen-doi.bat -> chuyen tat ca file ho tro, luu vao thu muc con "markdown"
REM  - Bam dup truc tiep -> chuyen cac file trong thu muc hien tai

py -3.13 -m markitdown --help >nul 2>nul
if errorlevel 1 (
  echo Chua cai MarkItDown. Hay chay cai-dat.bat truoc.
  pause
  exit /b 1
)

if "%~1"=="" (
  set "SRC=%cd%"
  goto :folder
)
if exist "%~1\*" (
  set "SRC=%~1"
  goto :folder
)

echo Dang chuyen: %~nx1
py -3.13 -m markitdown "%~1" -o "%~dpn1.md"
echo Xong: %~dpn1.md
pause
exit /b 0

:folder
if not exist "%SRC%\markdown" mkdir "%SRC%\markdown"
for %%E in (pdf docx pptx xlsx xls html htm csv json xml epub msg) do (
  for %%F in ("%SRC%\*.%%E") do (
    echo Dang chuyen: %%~nxF
    py -3.13 -m markitdown "%%F" -o "%SRC%\markdown\%%~nF.md"
  )
)
echo.
echo Xong. Ket qua nam trong: %SRC%\markdown
pause
