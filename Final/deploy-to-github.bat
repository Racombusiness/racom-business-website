@echo off
echo ========================================
echo GitHub Deployment Script
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed!
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo Initializing repository...
git init
git remote add origin https://github.com/Racombusiness/racom-business-website.git

echo Staging all files...
git add .

echo Creating commit...
git commit -m "Update all pages with fixes"

echo Pushing to GitHub...
git push -u origin main --force

echo.
echo ========================================
echo SUCCESS! All files uploaded to GitHub!
echo ========================================
pause
