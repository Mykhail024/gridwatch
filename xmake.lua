set_project("gridwatch")
set_languages("c++23")
set_license("GPL-3.0")

add_rules("mode.debug", "mode.release")

add_rules("plugin.compile_commands.autoupdate", { outputdir = "build", lsp = "clangd" })

set_warnings("all")

option("warnings_as_errors")
    set_default(false)
    set_description("Treat compiler warnings as errors")
option_end()

if has_config("warnings_as_errors") then
    set_warnings("all", "error")
end

add_requires("nlohmann_json")

includes("core", "cli")
