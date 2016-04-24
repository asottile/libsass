"D:\Programs\VS2015\VC\BIN\amd64\cl.exe" ^
    /I.\include -ID:\Programs\VS2015\VC\INCLUDE ^
    /c /nologo /W3 /WX- /DNDEBUG -O2 /Oi /Zi /EHsc /MT ^
    src/*.c
"D:\Programs\VS2015\VC\BIN\amd64\cl.exe" ^
    /I.\include ^
    "-ID:\Programs\VS2015\VC\INCLUDE" ^
    "-ID:\Programs\VS2015\VC\ATLMFC\INCLUDE" ^
    "-IC:\Program Files (x86)\Windows Kits\10\include\10.0.10240.0\ucrt" ^
    "-IC:\Program Files (x86)\Windows Kits\NETFXSDK\4.6.1\include\um" ^
    "-IC:\Program Files (x86)\Windows Kits\8.1\include\\shared" ^
    "-IC:\Program Files (x86)\Windows Kits\8.1\include\\um" ^
    "-IC:\Program Files (x86)\Windows Kits\8.1\include\\winrt" ^
    /c /nologo /W3 /WX- /DNDEBUG -O2 /Oi /Zi /EHsc /MT ^
    ./main.cpp src/*.cpp 
"D:\Programs\VS2015\VC\BIN\amd64\link.exe" ^
    "-LIBPATH:D:\Programs\VS2015\VC\LIB\amd64" ^
    "-LIBPATH:D:\Programs\VS2015\VC\ATLMFC\LIB\amd64" ^
    "-LIBPATH:C:\Program Files (x86)\Windows Kits\10\lib\10.0.10240.0\ucrt\x64" ^
    "-LIBPATH:C:\Program Files (x86)\Windows Kits\NETFXSDK\4.6.1\lib\um\x64" ^
    "-LIBPATH:C:\Program Files (x86)\Windows Kits\8.1\lib\winv6.3\um\x64" ^
    "-INCREMENTAL:NO" "-OUT:main.exe" "-Debug" "-nologo" ^
    *.obj
main.exe