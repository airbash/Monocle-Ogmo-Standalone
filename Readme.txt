Example project showing use of monocle premake script in an external project

Requirements
==========
The project expects you to have Monocle in the root directory.

/Monocle-Ogmo-Standalone
---/Monocle-Engine
---/OgmoProject


To generate project files
===================
Windows: premake4 vs2010
Linux: premake4 gmake


Do it all for me!
==================
Assuming you have git, premake4 installed and available in your system path 
and Visual Studio 2010 installed in the default location the following are 
the commands you would type into the console:

--------
git clone git://github.com/airbash/Monocle-Engine.git
cd OgmoProject
premake4 vs2010
cd Build/gen-vs2010-Ogmo
"C:\Program Files\Microsoft Visual Studio 10.0\Common7\Tools\vsvars32.bat"
msbuild OgmoSolution.sln
cd ../gen-vs2010-Ogmo-bin-debug
Ogmo.exe

--------