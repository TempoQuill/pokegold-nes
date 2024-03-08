@echo off

echo Assembling...
tools\asm6f.exe pokegold.asm -m -l %* bin\pokegold.nes > bin\assembler.log
if %ERRORLEVEL% neq 0 goto buildfail
move /y pokegold.lst bin > nul
echo Done.
echo.

echo SHA1 hash check:
echo 47ba60fad332fdea5ae44b7979fe1ee78de1d316ee027fea2ad5fe3c0d86f25a PRG0
echo Yours:
certutil -hashfile bin\pokegold.nes SHA256 | findstr /V ":"


goto end

:buildfail
echo The build seems to have failed.
goto end

:buildsame
echo Your built ROM and the original are the same.
goto end

:builddifferent
echo Your built ROM and the original differ.
echo If this is intentional, you're all set.
goto end


:end
echo on
