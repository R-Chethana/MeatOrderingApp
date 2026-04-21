@echo off
echo.
echo =====================================
echo   Building for Production
echo =====================================
echo.

cd frontend
echo [Frontend] Installing dependencies...
call npm install

echo [Frontend] Building...
call npm run build

cd ../backend
echo.
echo [Backend] Installing dependencies...
call npm install

echo.
echo =====================================
echo   Build Complete!
echo =====================================
echo.
echo Next steps:
echo 1. Deploy frontend/.next folder
echo 2. Deploy backend folder
echo 3. Set environment variables
echo 4. Generate QR code with your URL
echo.
echo See DEPLOYMENT.md for detailed instructions
echo.
pause
