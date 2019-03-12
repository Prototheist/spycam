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
	int frameCount = 0;
	cv::VideoWriter writer;
	cv::Mat frame, flow;
	cv::Mat flowMat, prevGray;
	

        //! Open camera 
        printf("Opening camera\n");
        hasOpened = myCamera.open();
	

	//! Check if camera opened
	if (0 == hasOpened )
	{
		printf("ERROR: Cam failed to open\n");
		return -1;
	}
		
    	//! Start capture
    	printf("Starting capture ...\n");
    	time ( &timer_begin );
    	while(1)
	{
		cv::Mat img;
		cv::Mat original;

		
		//! Grab a frame
        	myCamera.grab();
        	myCamera.retrieve(img);

		//! Write to video
		if (img.empty() )
		{
			break;
		}
		else
		{
			++frameCount;
    		}
		

		//! Resize and save original color frame 
		cv::resize(img, img, cv::Size(640, 480));
		img.copyTo(original);

		//! convert to grayscale
		cv::cvtColor(img,img, cv::COLOR_BGR2GRAY); 

		//! Optical Flow
		if(prevGray.empty() == false)
		{
			
			cv::calcOpticalFlowFarneback(prevGray, img, flowMat, 0.4, 1, 12, 2, 8, 1.2, 0);
			
			flowMat.copyTo(flow);

			for (int y = 0; y < original.rows; y += 5)
			{
				for (int x = 0; x < original.cols; x += 5)
				{
					const cv::Point2f flow_at_XY = flow.at<cv::Point2f>(y, x)*10;
					line(original, cv::Point(x,y), cv::Point(cvRound(x+flow_at_XY.x), cvRound(y+flow_at_XY.y)), cv::Scalar(255,0,0));
					circle(original, cv::Point(x,y), 1, cv::Scalar(0,0,0), -1);
				}
			}
			namedWindow("Flow", cv::WINDOW_AUTOSIZE);
			imshow("Flow", original);
			img.copyTo(prevGray);
		}
		else
		{
			img.copyTo(prevGray);
		}
  
    		//! Press  ESC on keyboard to  exit
    		char c = (char)cv::waitKey(1);
    		if( c == 27 ) 
		{
			break;
		}
      			
	}

        printf("Stop camera ...\n");
        myCamera.release();

        //! show time statistics
        time ( &timer_end ); /*! get current time; same as: timer = time(NULL)  */
        double secondsElapsed = difftime ( timer_end,timer_begin );
        std::cout<< secondsElapsed<<" seconds for "<< frameCount<<"  frames : FPS = "
	<<  ( float ) ( ( float ) ( frameCount ) /secondsElapsed ) <<std::endl;
 
  	//! Closes all the windows
  	cv::destroyAllWindows();

    	return 0;
}
//

