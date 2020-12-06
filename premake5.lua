    
project "yaml-cpp"
    kind "StaticLib"
    language "C++"
    
	targetdir (vendor_output_dir)
    objdir (vendor_output_int_dir)
	
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