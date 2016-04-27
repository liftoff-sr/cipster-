
# CMake toolchain file for MinGW 64 bit
# the name of the target operating system
set( CMAKE_SYSTEM_NAME Windows )

# which compilers to use for C and C++
set( CMAKE_C_COMPILER   x86_64-w64-mingw32-gcc )
set( CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++ )
set( CMAKE_RC_COMPILER  x86_64-w64-mingw32-windres )

# here is the target environment located
set( CMAKE_FIND_ROOT_PATH  /usr/x86_64-w64-mingw32 )

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

# compiler defines:
# __MINGW32__ is defined for both mingw32 and for mingw64.
# For mingw64, __MINGW64__ is defined, too, when targetting 64 bits.

option( MINGW64 "64 bit mingw toolchain" ON )
