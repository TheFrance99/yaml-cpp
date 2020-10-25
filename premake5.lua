    
project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    
	targetdir (outputdir)
    objdir (outputintdir)
	
	files
	{
        "src/**.h",
        "src/**.cpp",
        "include/**.cpp"
    }
	
	includedirs
	{
		"include"
	}
    
	filter "system:windows"
        systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
		
	filter "system:linux"
		pic "On"
        systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"