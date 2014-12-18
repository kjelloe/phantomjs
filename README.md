<<<<<<< HEAD
<<<<<<< HEAD
# [PhantomJS](http://phantomjs.org) - Scriptable Headless WebKit

PhantomJS ([www.phantomjs.org](http://phantomjs.org)) is a headless WebKit scriptable with JavaScript. It is used by hundreds of [developers](http://phantomjs.org/buzz.html) and dozens of [organizations](http://phantomjs.org/users.html) for web-related development workflow.

<<<<<<< HEAD
This fork is a recipe for building phantomjs for windows x86 using Visual Studio 2012 tool chain.
=======
This fork is a receipe for building phantomjs for windows x86 using Visual Studio 2012 tool chain.
>>>>>>> Initial readme
=======
PhantomJS ([www.phantomjs.org](http://phantomjs.org)) is a headless WebKit scriptable with JavaScript. It is used by hundreds of [developers](http://phantomjs.org/buzz.html) and dozens of [organizations](http://phantomjs.org/users.html) for web-related development workflow.

This fork is a recipe for building phantomjs for windows x86 using Visual Studio 2012 tool chain.
>>>>>>> Updated readme formatting

See https://github.com/ariya/phantomjs for original. 

Windows-binaries in **bin-win32** is based on phantomjs/master-branch cloned 17.12.2014 at 1pm.

## PREREQUISITES
- Microsoft Visual Studio 2012 (or Express) with Visual C++ : http://www.microsoft.com/en-us/download/details.aspx?id=34673
- Perl 5.20.x : http://www.activestate.com/activeperl/downloads
- Python 2.7.x: https://www.python.org/downloads/release/python-279/
- Ruby 1.9.x: http://dl.bintray.com/oneclick/rubyinstaller/rubyinstaller-1.9.3-p551.exe?direct
- Git 1.9.x: http://git-scm.com/download/win

## PREBUILD ENVIRONMENT SETTINGS
<<<<<<< HEAD
<<<<<<< HEAD
- **Start-Run "Developer Command Prompt for VS2012"** 
```sh
"%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\VsDevCmd.bat" 
```
- **Set Visual Studio compiler variables:** 
```sh
"%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat"
```
- **Add perl, python, ruby and git to path (NOTE: Paths must be in this particular order with git last due to version conflict with GIT/PERL)** 
```sh
SET PATH=%PATH%;C:\Perl64\bin;C:\Python27;C:\Ruby193\bin;%programfiles(x86)%\Git\bin;
```
- **Set ssl-info for git, if needed for git clone:** 
```sh
git config --system http.sslcainfo "%programfiles(x86)%\Git\bin\curl-ca-bundle.crt"
```
- **Add QT specific build parameters - Adjust according to location of your git repo**
```sh
SET SQLITE3SRCDIR=C:\GIT\phantomjs-build\src\qt\qtbase\src\3rdparty\sqlite
SET QMAKESPEC=win32-msvc2012
```
- **Change build.cmd to set which tool chain to use:** (NOTE: Currently master branch is msvc2012, see: https://github.com/Vitallium/phantomjs-3rdparty-win)
```sh
build.cmd:10 set 3RD_PARTY_LIBRARIES_REPO_BRANCH=master 
build.cmd:13  set 3RD_PARTY_LIBRARIES_REPO_BRANCH=msvc2012_debug
```
=======
- ** Start-Run "Developer Command Prompt for VS2012" ** from "C:\Program Files (x86)\Microsoft Visual Studio 11.0\Common7\Tools\VsDevCmd.bat"
- ** Set visual studio compiler variables:** "%programfiles(x86)%\Microsoft Visual Studio 11.0\Common7\Tools\vsvars32.bat"
- ** Add perl, python, ruby and git to path (NOTE: Paths must be in this particular order with git last due to version of GIT/PERL) ** SET PATH=%PATH%;C:\Perl64\bin;C:\Python27;C:\Ruby193\bin;%programfiles(x86)%\Git\bin;
- ** Set ssl-info for git if needed for clone:** git config --system http.sslcainfo "%programfiles(x86)%\Git\bin\curl-ca-bundle.crt"
- ** Add QT spesific build parameters - Adjust according to location of git your git repo ** 
	SET SQLITE3SRCDIR=C:\GIT\phantomjs-build\src\qt\qtbase\src\3rdparty\sqlite
	SET QMAKESPEC=win32-msvc2012
- ** Change build.cmd to set which tool chain to use:** 
	build.cmd:10 set 3RD_PARTY_LIBRARIES_REPO_BRANCH=master (which currently is msvc2012 in https://github.com/Vitallium/phantomjs-3rdparty-win)
	build.cmd:13  set 3RD_PARTY_LIBRARIES_REPO_BRANCH=msvc2012_debug
>>>>>>> Initial readme
=======
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
>>>>>>> Updated readme formatting

## BUILD
Run 'build.cmd' which will run for 2-4 hours depending on your computing power.

## AFTER BUILD - BEFORE RUNNING
<<<<<<< HEAD
<<<<<<< HEAD
In order for your custom phantomjs master build to run the following must be installed and available at runtime:
- OpenSSL (i.e. Win32 OpenSSL v1.0.1j) from http://slproweb.com/download/Win32OpenSSL-1_0_1j.exe **Make sure you select option to copy binaries to windows system directory**
- Microsoft Visual C++ redist 2012 x86: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679
- Microsoft Visual C++ redist 2012 64-bit: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679

**NOTE:** Before running phantomjs custom built binary for the first time: Start a new command prompt for openssl to load properly.


=======
The latest [stable release](http://phantomjs.org/release-2.0.html) is version 2.0.

**Note**: Please **do not** create a GitHub pull request **without** reading the [Contribution Guide](https://github.com/ariya/phantomjs/blob/master/CONTRIBUTING.md) first. Failure to do so may result in the rejection of the pull request.

## Use Cases

- **Headless web testing**. Lightning-fast testing without the browser is now possible! Various [test frameworks](http://phantomjs.org/headless-testing.html) such as Jasmine, Capybara, QUnit, Mocha, WebDriver, YUI Test, BusterJS, FuncUnit, Robot Framework, and many others are supported.
- **Page automation**. [Access and manipulate](http://phantomjs.org/page-automation.html) web pages with the standard DOM API, or with usual libraries like jQuery.
- **Screen capture**. Programmatically [capture web contents](http://phantomjs.org/screen-capture.html), including CSS, SVG and Canvas. Build server-side web graphics apps, from a screenshot service to a vector chart rasterizer.
- **Network monitoring**. Automate performance analysis, track [page loading](http://phantomjs.org/network-monitoring.html) and export as standard HAR format.

## Features

- **Multiplatform**, available on major operating systems: Windows, Mac OS X, Linux, and other Unices.
- **Fast and native implementation** of web standards: DOM, CSS, JavaScript, Canvas, and SVG. No emulation!
- **Pure headless (no X11) on Linux**, ideal for continuous integration systems. Also runs on Amazon EC2, Heroku, and Iron.io.
- **Easy to install**: [Download](http://phantomjs.org/download.html), unpack, and start having fun in just 5 minutes.

## Ecosystem

PhantomJS needs not be used only as a stand-alone tool. Check also some excellent related projects:

- [CasperJS](http://casperjs.org) enables easy navigation scripting and common high-level testing.
- [Poltergeist](https://github.com/jonleighton/poltergeist) allows running Capybara tests headlessly.
- [Guard::Jasmine](https://github.com/netzpirat/guard-jasmine) automatically tests Jasmine specs on Rails when files are modified.
- [GhostDriver](http://github.com/detro/ghostdriver/) complements Selenium tests with a PhantomJS WebDriver implementation.
- [PhantomRobot](https://github.com/datakurre/phantomrobot) runs Robot Framework acceptance tests in the background via PhantomJS.
- [Mocha-PhantomJS](https://github.com/metaskills/mocha-phantomjs) run Mocha tests using PhantomJS.

and many others [related projects](http://phantomjs.org/related-projects.html).

## Questions?

- Explore the complete [documentation](http://phantomjs.org/documentation/).
- Read tons of [user articles](http://phantomjs.org/buzz.html) on using PhantomJS.
- Join the [mailing-list](http://groups.google.com/group/phantomjs) and discuss with other PhantomJS fans.

PhantomJS is free software/open source, and is distributed under the [BSD license](http://opensource.org/licenses/BSD-3-Clause). It contains third-party code, see the included `third-party.txt` file for the license information on third-party code.

PhantomJS is created and maintained by [Ariya Hidayat](http://ariya.ofilabs.com/about) (Twitter: [@ariyahidayat](http://twitter.com/ariyahidayat)), with the help of [many contributors](https://github.com/ariya/phantomjs/contributors). Follow the official Twitter stream [@PhantomJS](http://twitter.com/PhantomJS) to get the frequent development updates.
=======
In order to yor custom phantomjs master build the following must be installed and available at runtime:
- OpenSSL (i.e. Win32 OpenSSL v1.0.1j) from http://slproweb.com/download/Win32OpenSSL-1_0_1j.exe ** Make sure you select option to copy binaries to windows system directory **
- Microsoft Visual C++ redist 2012 x86: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679
- Microsoft Visual C++ redist 2012 64-bit: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679

** NOTE: ** Before running phantomjs custom built binary for the first time: Start a new command prompt for openssl to load properly for the first time.
>>>>>>> Initial readme
=======
In order for your custom phantomjs master build to run the following must be installed and available at runtime:
- OpenSSL (i.e. Win32 OpenSSL v1.0.1j) from http://slproweb.com/download/Win32OpenSSL-1_0_1j.exe **Make sure you select option to copy binaries to windows system directory**
- Microsoft Visual C++ redist 2012 x86: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679
- Microsoft Visual C++ redist 2012 64-bit: http://www.microsoft.com/en-us/download/confirmation.aspx?id=30679

**NOTE:** Before running phantomjs custom built binary for the first time: Start a new command prompt for openssl to load properly.
>>>>>>> Updated readme formatting

>>>>>>> Issue #12897: README is updated with 2.0 info.

