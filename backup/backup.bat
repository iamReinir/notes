@echo off
setlocal

:: Define paths
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"
set BACKUP_FILE="hoppscotch_backup.json"

:: Run Chrome headless and extract local storage
%CHROME_PATH% --headless --disable-gpu --dump-dom "https://hoppscotch.io" ^
    --virtual-time-budget=5000 ^
    --remote-debugging-port=9222

:: Wait a few seconds to let the page load
timeout /t 5 >nul

:: Run JavaScript to extract local storage
echo window.setTimeout(() => console.log(JSON.stringify(localStorage)), 3000); > extract.js
echo (() => { const fs = require('fs'); fs.writeFileSync("%BACKUP_FILE%", JSON.stringify(localStorage)); })(); >> extract.js

:: Execute JavaScript using Node.js (Requires Node.js installed)
node extract.js

echo Backup saved to %BACKUP_FILE%

endlocal