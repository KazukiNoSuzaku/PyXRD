@echo off
echo Setting up PyXRD portable environment...

REM Install pip into the bundled Python
if not exist "runtime\Lib\site-packages\pip" (
    echo Installing pip...
    runtime\python.exe data\lib\python3.8\site-packages\get-pip.py --no-warn-script-location
)

echo Installing required packages...
runtime\python.exe -m pip install PySide6 numpy matplotlib --target runtime\Lib\site-packages --no-warn-script-location

echo.
echo Setup complete! Run PyXRD.bat to start the application.
pause
