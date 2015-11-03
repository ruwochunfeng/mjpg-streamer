set(CPACK_PACKAGE_VENDOR "mjpg-streamer")
set(CPACK_PACKAGE_CONTACT "? <?@?>")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "MJPG-streamer")
set(CPACK_PACKAGE_VERSION_MAJOR 2015)
set(CPACK_PACKAGE_VERSION_MINOR 8)
set(CPACK_PACKAGE_VERSION_PATCH 5)
set(CPACK_PACKAGE_VERSION_REVISION 1)
set(CPACK_GENERATOR "DEB")

if(SYSROOT)
	set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE armhf)
else(SYSROOT)
	execute_process(COMMAND dpkg --print-architecture OUTPUT_VARIABLE CPACK_DEBIAN_PACKAGE_ARCHITECTURE OUTPUT_STRIP_TRAILING_WHITESPACE)
endif(SYSROOT)
set(CPACK_PACKAGE_FILE_NAME "${CMAKE_PROJECT_NAME}-${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}-${CPACK_PACKAGE_VERSION_REVISION}_${CPACK_DEBIAN_PACKAGE_ARCHITECTURE}")

include(CPack)
