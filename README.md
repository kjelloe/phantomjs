# [PhantomJS](http://phantomjs.org) - Scriptable Headless WebKit

PhantomJS ([www.phantomjs.org](http://phantomjs.org)) is a headless WebKit scriptable with JavaScript. It is used by hundreds of [developers](http://phantomjs.org/buzz.html) and dozens of [organizations](http://phantomjs.org/users.html) for web-related development workflow.

This fork is a recipe for building phantomjs for windows x86 using Visual Studio 2012 tool chain.

See https://github.com/ariya/phantomjs for original. 

Windows-binaries in **bin-win32** is based on phantomjs/master-branch cloned 17.12.2014 at 1pm.

## PREREQUISITES
- Microsoft Visual Studio 2012 (or Express) with Visual C++ : http://www.microsoft.com/en-us/download/details.aspx?id=34673
- Perl 5.20.x : http://www.activestate.com/activeperl/downloads
- Python 2.7.x: https://www.python.org/downloads/release/python-279/
- Ruby 1.9.x: http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p551.exe?direct
- Git 1.9.x: http://git-scm.com/download/win

## PREBUILD ENVIRONMENT SETTINGS
- **Start-Run "Developer Command Prompt for VS2012"** 
	```	
	"%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\VsDevCmd.bat" 
	```
- **Set Visual Studio compiler variables:** 
	```
	"%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat"
	```
- **Add perl, python, ruby and git to path (NOTE: Paths must be in this particular order with git last due to version conflict with GIT/PERL)** 
	```
	SET PATH=%PATH%;C:\Perl64\bin;C:\Python27;C:\Ruby193\bin;%programfiles(x86)%\Git\bin;
	```
- **Set ssl-info for git, if needed for git clone:** 
	```
	git config --system http.sslcainfo "%programfiles(x86)%\Git\bin\curl-ca-bundle.crt"
	```
- **Add QT specific build parameters - Adjust according to location of your git repo**
	```
	SET SQLITE3SRCDIR=C:\GIT\phantomjs-build\src\qt\qtbase\src\3rdparty\sqlite
	SET QMAKESPEC=win32-msvc2012
	```
- **Change build.cmd to set which tool chain to use:** (NOTE: Currently master branch is msvc2012, see: https://github.com/Vitallium/phantomjs-3rdparty-win)
	```
	build.cmd:10 set 3RD_PARTY_LIBRARIES_REPO_BRANCH=master 
	build.cmd:13  set 3RD_PARTY_LIBRARIES_REPO_BRANCH=msvc2012_debug
	```

## BUILD
Run 'build.cmd' which will run for 2-4 hours depending on your computing power.

## AFTER BUILD - BEFORE RUNNING
In order for your custom phantomjs master build to run the following must be installed and available at runtime:
- OpenSSL (i.e. Win32 OpenSSL v1.0.1j) from http://slproweb.com/download/Win32OpenSSL-1_0_1j.exe **Make sure you select option to copy binaries to windows system directory**
- Microsoft Visual C++ redist 2012 x86: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679
- Microsoft Visual C++ redist 2012 64-bit: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679

**NOTE:** Before running phantomjs custom built binary for the first time: Start a new command prompt for openssl to load properly.



