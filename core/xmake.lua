target("power-core")
    set_kind("static")

    add_packages("nlohmann_json")

    add_files("src/**.cpp")

    add_includedirs("include", {public = true})
    add_includedirs("src")

    add_headerfiles("include/(gridwatch/**.hpp)")
target_end()
