project "imgui"
	kind "StaticLib"
	language "C++"
	staticruntime "off"

	targetdir ("bin/" .. outputdir)
	objdir ("bin-int/" .. outputdir)

	files {
		"imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_internal.h",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
        "imgui_tables.cpp",
        "imconfig.h",

        "backends/imgui_impl_glfw.h",
        "backends/imgui_impl_glfw.cpp",
        "backends/imgui_impl_opengl3.h",
        "backends/imgui_impl_opengl3.cpp"
	}

    includedirs {
        "backends/../",

        "%{IncludeDir.GLFW}"
    }

	filter "system:linux"
		pic "On"
		systemversion "latest"
        cppdialect "C++20"


	filter "system:windows"
		systemversion "latest"
        cppdialect "C++20"


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"
