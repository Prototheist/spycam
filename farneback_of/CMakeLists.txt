#####################################
cmake_minimum_required (VERSION 2.8) 
project (raspicam_test)

set( raspicam_DIR "/usr/local/lib/cmake" )
set( OpenCV_DIR "/usr/include/opencv" )
set( OpenCV2_DIR "/usr/include/opencv2" )

find_package(raspicam REQUIRED)
find_package(OpenCV)

find_package(OpenCV REQUIRED COMPONENTS core imgproc highgui)

IF  ( OpenCV_FOUND AND raspicam_CV_FOUND)
	MESSAGE(STATUS "All assets found. Building solution.")
	include_directories(${OpenCV_INCLUDE_DIRS})
	add_executable (main main.cpp)  
	target_link_libraries (main ${raspicam_CV_LIBS} ${OpenCV_LIBS} ${raspicam_LIBS} )
ELSE()
	MESSAGE(FATAL_ERROR "MISSING DEPENDENCIES!")
ENDIF()

#####################################
