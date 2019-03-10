#####################################
cmake_minimum_required (VERSION 2.8) 
project (raspicam_test)

set(raspicam_DIR "/usr/local/lib/cmake")

set(OpenCV_DIR "/usr/lib/opencv")

find_package(raspicam REQUIRED)
find_package(OpenCV)
find_package(OpenCV REQUIRED COMPONENTS core imgproc highgui)

IF  ( OpenCV_FOUND AND raspicam_CV_FOUND)
	MESSAGE(STATUS "COMPILING OPENCV TESTS")
	include_directories(${OpenCV_INCLUDE_DIRS})
	add_executable (simpletest_raspicam simpletest_raspicam.cpp)  
	target_link_libraries (simpletest_raspicam ${raspicam_CV_LIBS} ${OpenCV_LIBS})
ELSE()
	MESSAGE(FATAL_ERROR "OPENCV NOT FOUND IN YOUR SYSTEM")
ENDIF()

#####################################
