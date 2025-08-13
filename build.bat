@echo off
cd /d "%~dp0"

echo ===============================
echo Building the project...
echo ===============================

npm run build

echo ===============================
echo Build finished!
echo ===============================

pause
