file(MAKE_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}/Xdmcp")
add_library(Xdmcp STATIC "libxdmcp/Array.c" "libxdmcp/Fill.c" "libxdmcp/Flush.c" "libxdmcp/Key.c" "libxdmcp/Read.c" "libxdmcp/Unwrap.c" "libxdmcp/Wrap.c" "libxdmcp/Wraphelp.c" "libxdmcp/Write.c")
target_compile_options(Xdmcp PRIVATE "-D_GNU_SOURCE=1" "-DHASXDMAUTH=1" "-DHAVE_ARC4RANDOM_BUF=1" "-DHAVE_GETENTROPY=1" "-DHAVE_LRAND48=1" "-DHAVE_SRAND48=1" "-DHAVE_SYS_RANDOM_H=1" ${common_compile_options})
target_include_directories(Xdmcp PUBLIC "libxdmcp/include" "${CMAKE_CURRENT_BINARY_DIR}/Xdmcp")
target_link_libraries(Xdmcp PRIVATE xorgproto)
