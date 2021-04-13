::@echo off
chcp 65001 2>nul >nul

set "EXIT_CODE="
set "ARGS="

pushd "%~sdp0"


::-----------------------------------------------------command: add files to archive.
set ARGS=%ARGS% a
::-----------------------------------------------------switch:  overwrite mode - overwrite all existing files without prompt.                                                                   https://sevenzip.osdn.jp/chm/cmdline/switches/overwrite.htm       
set ARGS=%ARGS% -aoa
::-----------------------------------------------------switch:  set output log level - show information about additional operations (Analyze, Replicate) for "Add" / "Update" operations.       https://sevenzip.osdn.jp/chm/cmdline/switches/bb.htm              
set ARGS=%ARGS% -bb3
::-----------------------------------------------------switch:  show execution time statistics
set ARGS=%ARGS% -bt
::-----------------------------------------------------switch:  store hard links as links (WIM and TAR formats only)
set ARGS=%ARGS% -snh
::-----------------------------------------------------switch:  store symbolic links as links (WIM and TAR formats only)
set ARGS=%ARGS% -snl
::-----------------------------------------------------switch:  stop archive creating, if 7-Zip can't open some input file
set ARGS=%ARGS% -sse
::-----------------------------------------------------switch:  compress files open for writing (shared files)                                                                                  https://sevenzip.osdn.jp/chm/cmdline/switches/shared.htm          
set ARGS=%ARGS% -ssw
::-----------------------------------------------------switch:  sets Large Pages mode.                                                                                                          https://sevenzip.osdn.jp/chm/cmdline/switches/large_pages.htm           
set ARGS=%ARGS% -slp
::-----------------------------------------------------switch:  sets charset for for console input/output (Default charset is DOS). - combine this with 'chcp 65001 2>nul >nul' .               https://sevenzip.osdn.jp/chm/cmdline/switches/scc.htm                    
set ARGS=%ARGS% -sccUTF-8
::-----------------------------------------------------switch:  set charset for list files (Default charset is UTF-8)                                                                           https://sevenzip.osdn.jp/chm/cmdline/switches/charset.htm
set ARGS=%ARGS% -scsUTF-8

::set ARGS=%ARGS% -m0=lzma2
set ARGS=%ARGS% -m0=flzma2

::-----------------------------------------------------switch:  specifies the password. (dummy - "SECRET", this isn't used anywhere.)                                                                                                             https://sevenzip.osdn.jp/chm/cmdline/switches/password.htm                        
set ARGS=%ARGS% -pSECRET
::-----------------------------------------------------switch:  (default on)  Enables or disables archive header compressing. The default mode is hc=on. If archive header compressing is enabled, the archive header will be compressed with LZMA method.                                                      https://sevenzip.osdn.jp/chm/cmdline/switches/method.htm#HeaderCompress
set ARGS=%ARGS% -mhc=on
::-----------------------------------------------------switch:  (default off) Enables archive header encryption. The default mode is he=off. this requires password before you can see the file names (normally password is required just when you want to extract files).                                                       https://sevenzip.osdn.jp/chm/cmdline/switches/method.htm#HeaderEncrypt
set ARGS=%ARGS% -mhe=on


::-----------------------------------------------------The extra options for the radix match-finder cannot be changed from the command line. Their effect is not large anyway. The high-compression levels can be accessed by specifying -ma=3. When this flag is used, the compression level determines only the dictionary size, where 1 = 1 Mb and 9 = 256 Mb. All other settings are maximized for all levels.
set ARGS=%ARGS% -ma=3
::-----------------------------------------------------switch:  Sets multithread mode.                                                                                                                                                                                                                           https://sevenzip.osdn.jp/chm/cmdline/switches/method.htm#MultiThread           
set ARGS=%ARGS% -mmt=4
::-----------------------------------------------------switch:  (default on) Set multithreading mode for filters.
set ARGS=%ARGS% -mmtf=on
::-----------------------------------------------------switch:  Sets level of compression                                                                                                                                                                                                                        https://sevenzip.osdn.jp/chm/cmdline/switches/method.htm#SevenZipX
set ARGS=%ARGS% -mx=9


::-----------------------------------------------------switch:  (default on)  Stores last Modified timestamps for files.
set ARGS=%ARGS% -mtm=on
::-----------------------------------------------------switch:  (default off) Stores Creation timestamps for files.
set ARGS=%ARGS% -mtc=on
::-----------------------------------------------------switch:  (default off) Stores last Access timestamps for files.
set ARGS=%ARGS% -mta=on
::-----------------------------------------------------switch:  (default on)  Stores file attributes.
set ARGS=%ARGS% -mtr=on

::-----------------------------------------------------switch:  (default off) Sets solid mode.
set ARGS=%ARGS% -ms=on


del /f /q "archive.7z"
call "7z.exe"   %ARGS%   "archive.7z" "*.dbs"
set "EXIT_CODE=%ErrorLevel%"

pause

exit /b %EXIT_CODE%





::----------------------------------------------------------------------------------------------------------------------------------------------------------
::based on just the 7z.exe and 7z.dll from https://github.com/conor42/7-Zip-FL2/releases/download/v1.0.0.build20190502/7-Zip-FL2-100_64_20190502.zip
::which default to "Fast LZMA2" (modified LZMA2) encoder.
::based on https://sevenzip.osdn.jp/chm/cmdline/switches/ help documents.
::----------------------------------------------------------------------------------------------------------------------------------------------------------
