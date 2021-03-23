@echo off
rem builds and copies over to appropriate directory

set project_name=nvim_fullscreen
set source_dir=..\
set source_file=nvim_fullscreen.c
set compile_flags=/MD /LD /Tc
set compile_libs=user32.lib gdi32.lib
set output_dir=D:\Programs\Neovim\bin

(
	echo.
	echo Setting environment for %project_name% ...
	echo.
)

call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

color 4

(
	echo.
	echo Building %project_name% ...
	echo.
)

if exist ".\build" (
	rmdir ".\build" /s /q
)

mkdir ".\build"

pushd ".\build"

cl %compile_flags% %source_dir%%source_file% %compile_libs%

if exist %project_name%.dll (
	echo.
	echo Done building %project_name%!

	copy /y /b %project_name%.dll /b D:\Programs\Neovim\bin\%project_name%.dll
) else (
	echo.
	echo Failure to patch %project_name% library to Neovim

	popd

	rmdir ".\build" /s /q

	goto :EOF
)

popd
