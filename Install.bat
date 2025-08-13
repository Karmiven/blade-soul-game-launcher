@echo off
cd /d "%~dp0"

echo ===============================
echo Creating package.json file...
echo ===============================

(
echo {
echo   "name": "game-launcher",
echo   "version": "1.0.1",
echo   "description": "A launcher for BNS game with customizable settings and IP address management.",
echo   "main": "main.js",
echo   "scripts": {
echo     "start": "electron .",
echo     "build": "electron-builder"
echo   },
echo   "author": "WAR100CK",
echo   "license": "ISC",
echo   "dependencies": {
echo     "@fortawesome/fontawesome-free": "^6.7.2",
echo     "@popperjs/core": "^2.11.7",
echo     "bootstrap": "^5.3.0",
echo     "jquery": "^3.7.1",
echo     "ping": "^0.4.4",
echo     "toastr": "^2.1.4",
echo     "form-data": "^4.0.4"
echo   },
echo   "devDependencies": {
echo     "electron": "^32.1.2",
echo     "electron-builder": "^25.0.5"
echo   },
echo   "build": {
echo     "appId": "github.com/war100ck/blade-soul-game-launcher",
echo     "productName": "BNS_Launcher",
echo     "files": [
echo       "main.js",
echo       "src/views/index.html",
echo       "src/assets/**/*",
echo       "src/views/css/**/*",
echo       "src/views/js/**/*",
echo       "src/views/libs/**/*"
echo     ],
echo     "directories": {
echo       "output": "release"
echo     },
echo     "win": {
echo       "icon": "src/assets/images/icon.ico"
echo     },
echo     "nsis": {
echo       "oneClick": false,
echo       "allowToChangeInstallationDirectory": true,
echo       "createDesktopShortcut": true,
echo       "createStartMenuShortcut": true
echo     }
echo   }
echo }
) > package.json

echo ===============================
echo package.json created successfully!
echo ===============================

echo Installing dependencies...
npm install
echo ===============================
echo Dependencies installed successfully!
echo ===============================

pause
