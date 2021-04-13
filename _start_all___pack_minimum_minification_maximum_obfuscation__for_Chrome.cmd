@echo off
chcp 65001          2>nul >nul

::----------------------------------------------------
::- this batch file takes a list of arguments,       -
::- each argument is a folder.                       -
::- it runs a batch file for each of the arguments   -
::-   in a non-blocking way (in parallel).           -
::----------------------------------------------------


:LOOP
  ::has argument ?
  if ["%~1"] EQU [""] ( 
    echo done.
    goto END;
  )
  ::argument exist ?
  if not exist %~sf1 (
    echo not exist.
    goto NEXT;
  )
  ::folder exist ?
  echo exist
  if not exist %~sf1\NUL (
    echo is a file, I was expecting a directory.
    goto NEXT;
  )
  ::OK
  echo is a directory


::--------------------------------------------------------------------------------

  start /low "cmd /c "call _pack_minimum_minification_maximum_obfuscation__for_Chrome.cmd "%~sf1"""

::--------------------------------------------------------------------------------


:NEXT
  echo.
  shift
  goto LOOP

:END
::pause
  exit /b 0
