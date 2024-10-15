#include "opencv2/opencv.hpp"

int main () {
    cv::Mat img = cv::Mat::zeros(cv::Size(640, 480), CV_8UC3);
    cv::imshow("img", img);

    cv::waitKey(0);

    return 0;
}
