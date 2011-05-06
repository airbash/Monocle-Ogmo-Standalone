--premake4.lua
--
-- Ogmo Standalone project, linking to MonocleCore library
-- Usage: "premake4 vs2010"
--

-- Required globals for helper script
_MONOCLE_APP			= "Ogmo"
_MONOCLE_APP_BASE		= os.getcwd()								--root directory of your project
_MONOCLE_BASE			= os.getcwd().."/../Monocle-Engine"			--root directory for Monocle

dofile( (_MONOCLE_BASE.."/premake4-helper.lua") )

--
-- Monocle Solution
--
solution (_MONOCLE_SOLUTION_NAME)
	basedir( _BUILD_BASE )
	configurations { "Debug", "Release" }
	
		-- Generic test app premake4 script
	project (_MONOCLE_APP)
		kind "ConsoleApp"
		language "C++"
		basedir	( _BUILD_BASE )
		
		monocle_os_defines()
		monocle_os_includedirs()
		monocle_os_links()

		files { _MONOCLE_APP_BASE.."/**.h", _MONOCLE_APP_BASE.."/**.cpp" }
		
		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols" }
			monocle_build_targetdir( "debug" )
			
		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize" } 
			monocle_build_targetdir( "release" )

	-- Monocle Core Library
	monocle_project_corelib();
