::@echo off
set "EXIT_CODE=0"
chcp 65001 2>nul >nul

title [%~n0]  -  [%~n1]

if ["%~1"] equ [""] ( goto ERR_NO_ARG )

set "NAME=%~n1"
set "SOURCE=%~f1\"
set "TARGET=%~f1_tmp\"
if not exist %~s1\NUL ( goto ERR_NOT_FOLDER )

xcopy /E /Y /F /C /G /Z /B "%~1" "%TARGET%"
set "EXIT_CODE=%ErrorLevel%"
if ["%EXIT_CODE%"] NEQ ["0"] ( goto ERR_COPY )


::------------------------------------------------- accessing the target-folder.
cd /d "%TARGET%"

set "VERSION="
for /f "tokens=*" %%a in ('call ..\_res\manifest_version\index.cmd manifest.json') do ( set "VERSION=%%a" ) 

pause



::------------------------------------------------- cleaning up stuff.
del /f /q "*.md"
del /f /q ".gitignore"
del /f /q ".gitattributes"
rmdir /s /q "_metadata"
cd "resources/"
del /f /q "_*"
del /f /q "*.md"
del /f /q "*.txt"
del /f /q "*.7z"
del /f /q "*.pdn"
del /f /q "*.gif"
del /f /q "tile.png"
del /f /q "screenshot*.*"

cd ..

::copy plain-content (unobfuscated)
7z a -y -x!"firefox.manifest.json"  -ssw "..\%NAME%_%VERSION%_chrome_plain.zip" *
ren "manifest.json" "chrome.manifest.json"
ren "firefox.manifest.json" "manifest.json"
7z a -y -x!"chrome.manifest.json "  -ssw "..\%NAME%_%VERSION%_firefox_plain.zip" *
ren "manifest.json" "firefox.manifest.json" 
ren "chrome.manifest.json" "manifest.json"



cd "resources/"
for %%f in (*.js) do (
  call "..\mods\Closure-Compiler\example3_ignore_undefined_variables__include_webext_globals__simple__noprettyprint.cmd" "%%~f"
)
for %%f in (*.min.js) do (
 call "..\mods\javascript-obfuscator\javascript-obfuscator_config.cmd" "%%~f"
)


echo.
echo.---------------------------------------------------------------------------
echo.- rename the files and organise everything and press-any-key to continue. -
echo.---------------------------------------------------------------------------
echo.
pause


cd ..

::copy obfuscated-content.
7z a -y -x!"firefox.manifest.json"  -ssw "..\%NAME%_%VERSION%_chrome_obfuscated.zip" *
ren "manifest.json" "chrome.manifest.json"
ren "firefox.manifest.json" "manifest.json"
7z a -y -x!"chrome.manifest.json"   -ssw "..\%NAME%_%VERSION%_firefox_obfuscated.zip" *
ren "manifest.json" "firefox.manifest.json" 
ren "chrome.manifest.json" "manifest.json"


del /f /q  "firefox.manifest.json"


if exist "%~sdp0_keys\%NAME%.pem" ( goto ALREADY_HAVE_PRIVATE_KEY )

call "D:\Software\Chromium\application\chrome.exe" "--pack-extension=%CD%" 

:ALREADY_HAVE_PRIVATE_KEY
call "D:\Software\Chromium\application\chrome.exe" "--pack-extension=%CD%" "--pack-extension-key=%~sdp0_keys\%NAME%.pem" 



::true name (no '_tmp' suffix)
ren "..\%NAME%_tmp.crx" "%NAME%_%VERSION%.crx"
ren "..\%NAME%_tmp.pem" "%NAME%.pem"


::keep key in 'keys' folder
move /y "..\%NAME%.pem" "%~sdp0_keys\%NAME%.pem"


::remove empty folder
cd /d "%~dp0"
del   /q /f "%TARGET%"
rmdir /q /s "%TARGET%"
del   /q /f "%~f1_tmp"
rmdir /q /s "%~f1_tmp"

pause



goto END

:ERR_NO_ARG
  echo please provide an argument which is the path to a folder, 1>&2
  echo that will be copied and compressed to plain.zip, then obfuscated and zipped again. 1>&2
  set "EXIT_CODE=111"
  goto END

:ERR_NOT_FOLDER
  echo please provide a path to a folder. 1>&2
  set "EXIT_CODE=222"
  goto END
  
:ERR_COPY
  echo there was an error while trying to copy %SOURCE% to %TARGET%                     1>&2
  echo please check you have permissions to access the folders,                         1>&2
  echo and that the target-folder is not already-exist and used by another application. 1>&2
  set "EXIT_CODE=333"
  goto END

:END
  pause
  exit /b %EXIT_CODE%
