cmake_minimum_required(VERSION 3.0.0)

project(somm24/nm)

if ( CMAKE_COMPILER_IS_GNUCC )
    set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -ggdb -Wall -Wfatal-errors -D_FILE_OFFSET_BITS=64")
endif()

execute_process ( COMMAND dirname ${CMAKE_SOURCE_DIR}
            OUTPUT_VARIABLE PROJECT_ROOT_DIR
            OUTPUT_STRIP_TRAILING_WHITESPACE
        )

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_ROOT_DIR}/lib)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_ROOT_DIR}/bin)

include_directories(${PROJECT_ROOT_DIR}/include)

add_subdirectory(core)
add_subdirectory(frontend)
add_subdirectory(group)

set(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} -L${PROJECT_ROOT_DIR}/lib")

set(targets
    main
)

foreach (target ${targets})
    add_executable(${target} ${target}.cpp)
    target_link_libraries(${target}
        #-static
        "-Wl,--start-group"
        core
        binsim
        binjdt
        binpct
        binmem
        binrdy
        binswp
        sim
        jdt
        pct
        mem
        rdy
        swp
        frontend
        "-Wl,--end-group"
    )
endforeach()

