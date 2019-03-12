 /*	COPYRIGHT 2019 PROTOTHEIST
	This program will launch the pi cam and stream video.	
*/

#include <vector>
#include <stdio.h>
#include <iostream>
#include <ctime>
#include <fstream>

//! Raspicam - camera interface
#include <raspicam/raspicam_cv.h>

//! OpenCV - image processing
#include <opencv2/opencv.hpp>
#include <opencv2//highgui/highgui.hpp>
#include <opencv2/objdetect/objdetect.hpp>
#include <opencv2/video/tracking.hpp>
#include <opencv2//imgproc/imgproc.hpp>


int main ( int argc,char **argv ) 
{
	//! Objects
	time_t timer_begin,timer_end;
	raspicam::RaspiCam_Cv myCamera;
	int hasOpened = 0; 
	int frame_width = 0;
	int frame_height = 0;
	cv::Mat frame;
	int frameCount = 0;
	cv::VideoWriter writer;
	

        //! Open camera 
        printf("Opening camera\n");
        hasOpened = myCamera.open();

	//! Check if camera opened
	if (0 == hasOpened )
	{
		printf("ERROR: Cam failed to open\n");
		return -1;
	}
		
    	//Start capture
    	printf("Starting capture ...\n");
    	time ( &timer_begin );
    	while(1)
	{
		//! Grab a frame
        	myCamera.grab();
        	myCamera.retrieve(frame);

		//! convert to grayscale
		cv::cvtColor(frame,frame, cv::COLOR_BGR2GRAY);
		
		//! Write to video
		if (frame.empty() )
		{
			break;
		}
		else
		{
			++frameCount;
    		}

		// Display the resulting frame    
    		cv::imshow( "Frame", frame );
  
    		// Press  ESC on keyboard to  exit
    		char c = (char)cv::waitKey(1);
    		if( c == 27 ) 
		{
			break;
		}
      			
	}

        printf("Stop camera ...\n");
        myCamera.release();

        //show time statistics
        time ( &timer_end ); /* get current time; same as: timer = time(NULL)  */
        double secondsElapsed = difftime ( timer_end,timer_begin );
        std::cout<< secondsElapsed<<" seconds for "<< frameCount<<"  frames : FPS = "<<  ( float ) ( ( float ) ( frameCount ) /secondsElapsed ) <<std::endl;
 
  	// Closes all the windows
  	cv::destroyAllWindows();

    	return 0;
}
//

