@echo off
g++ rand.cpp -o rand.exe -std=c++14
g++ ac.cpp -o ac.exe -std=c++14
g++ code.cpp -o code.exe -std=c++14
:loop
rand.exe > in.txt
ac.exe < in.txt > ans.txt
code.exe < in.txt > out.txt
fc ans.txt out.txt
if not errorlevel 1 ( 
::timeout /t 2 /nobreak > NUL
goto loop
)
start
start
start
del ac.exe
del rand.exe
del code.exe
del in.txt
del out.txt
del ans.txt
pause