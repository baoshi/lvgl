file(GLOB_RECURSE SOURCES ${LVGL_ROOT_DIR}/src/*.c)
file(GLOB_RECURSE DEMO_SOURCES ${LVGL_ROOT_DIR}/demos/*.c)

add_library(lvgl INTERFACE)
target_sources(lvgl INTERFACE ${SOURCES})
target_compile_definitions(lvgl INTERFACE LV_CONF_INCLUDE_SIMPLE)
target_include_directories(lvgl INTERFACE ${LVGL_ROOT_DIR})

add_library(lvgl_demos INTERFACE)
target_sources(lvgl_demos INTERFACE ${DEMO_SOURCES})
target_compile_definitions(lvgl_demos INTERFACE LV_CONF_INCLUDE_SIMPLE)
target_include_directories(lvgl_demos INTERFACE ${LVGL_ROOT_DIR}/demos)
