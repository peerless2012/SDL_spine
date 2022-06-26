cmake_minimum_required(VERSION 3.6)

if(MSVC)
	message("MSCV detected")
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
	set (CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS}")
else()
	set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -pedantic -std=c89")
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wnon-virtual-dtor -pedantic -std=c++11 -fno-exceptions -fno-rtti")
endif()

project(spine_sdl)

find_library(SDL2 SDL2)

find_library(SDL2_image SDL2_image)

find_library(spine-cpp spine-cpp)

include_directories(include)

file(GLOB INCLUDES "include/*.h")
file(GLOB SOURCES "src/*.cpp")

add_library(spine_sdl STATIC ${SOURCES} ${INCLUDES})
target_include_directories(spine_sdl PUBLIC include)
target_link_libraries(spine_sdl SDL2 SDL2_image spine-cpp)
install(TARGETS spine_sdl DESTINATION dist/lib)
install(FILES ${INCLUDES} DESTINATION dist/include)