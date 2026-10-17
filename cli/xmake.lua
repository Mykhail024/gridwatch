target("power-cli")
    set_kind("binary")

    add_packages("nlohmann_json")

    add_files("src/**.cpp")
    add_deps("power-core")
