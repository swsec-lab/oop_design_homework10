@echo off
setlocal enabledelayedexpansion

g++ main.cpp MyVector.cpp -o main 
main > Test\output.txt

fc Test\output.txt Test\expected.txt > nul
if errorlevel 1 (
    echo Test : FAIL
) else (
    echo Test : PASS
)