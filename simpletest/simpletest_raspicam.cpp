/*	COPYRIGHT 2019 PROTOTHEIST
	This program will launch the pi cam and stream video.	
*/

#include <ctime>
#include <fstream>
#include <iostream>
#include <raspicam/raspicam_cv.h>
#include <opencv2/opencv.hpp>

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

