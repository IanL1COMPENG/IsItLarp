@echo off
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (
  echo Node.js is not installed. Download Node.js 20+ from https://nodejs.org/
  pause
  exit /b 1
)
if not exist .env (
  copy .env.example .env >nul
  echo.
  echo Add your OPENAI_API_KEY to the .env file that opens next.
  echo A BRAVE_SEARCH_API_KEY is optional, but needed for URL-only public search.
  echo Save the file and close Notepad to continue.
  notepad .env
)
echo.
echo Starting Is It Larp? at http://localhost:3000
echo Close this window to stop the site.
start "" "http://localhost:3000"
node server.mjs
pause
