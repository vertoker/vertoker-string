@echo off
rem Я написал достаточно универсальный скрипт для простой компиляции
rem Эта версия без аргументов и условий выбора
rem (файл назван run потому что в консоли через tab он первым выдаётся)

set ROOT_PATH=%cd%\
set BUILD_PATH=%cd%\build\
set EXE_PATH=%BUILD_PATH%executable.exe

rem Именно из-за таких команд мне больше нравиться sh чем bat
@RD /S /Q %BUILD_PATH%
md %BUILD_PATH%

rem Обычно я использую clang++, но тут g++ чтобы у вас запустилось
g++ main.cpp vertoker_string.h --output=%EXE_PATH% --std=c++11 -O3
build\executable.exe

@echo on