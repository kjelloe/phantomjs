@echo on
%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat
SET PATH=%PATH%;C:\Perl64\bin;C:\Python27;C:\Ruby193\bin;%programfiles(x86)%\Git\bin;
git config --system http.sslcainfo "%programfiles(x86)%\Git\bin\curl-ca-bundle.crt"
SET QMAKESPEC=win32-msvc2012
SET SQLITE3SRCDIR=C:\GIT\phantomjs2\src\qt\qtbase\src\3rdparty\sqlite

ECHO "Before build:"
ECHO "edit src/qt/preconfig.cmd"
ECHO "change !BUILD_TYPE! to release "

ECHO "In order to run custom build phantomjs pre 2.0 the following must be installed available at runtime:"
ECHO "OpenSSL: Win32 OpenSSL v1.0.1j"
ECHO "Microsoft Visual C++ redist 2012 x86: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679"
ECHO "Microsoft Visual C++ redist 2012 64-bit: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679"
