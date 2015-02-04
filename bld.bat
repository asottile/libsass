DIR
"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\vcvars32.bat" x86
"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\cl.exe" /c /nologo /Ox /MD /W3 /GS- /DNDEBUG *.c -c -O2 /Zi
"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\cl.exe" /c /nologo /Ox /MD /W3 /GS- /DNDEBUG *.cpp -c -O2 /Zi
"C:\Program Files (x86)\Microsoft Visual Studio 12.0\VC\bin\link.exe" /nologo /INCREMENTAL:NO *.obj /OUT:main.exe /Debug
