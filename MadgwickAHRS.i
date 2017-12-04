/* File : example.i */
%module MadgwickAHRS
%{
/* Put headers and other declarations here */

void MadgwickAHRSupdate(float gx, float gy, float gz, float ax, float ay, float az, float mx, float my, float mz);
void MadgwickAHRSupdateIMU(float gx, float gy, float gz, float ax, float ay, float az);
void init_q();

volatile float q0, q1 , q2 , q3;                  // quaternion of sensor frame relative to auxiliary frame

%}

extern void MadgwickAHRSupdate(float gx, float gy, float gz, float ax, float ay, float az, float mx, float my, float mz);
extern void MadgwickAHRSupdateIMU(float gx, float gy, float gz, float ax, float ay, float az);
extern void init_q();

extern volatile float q0 , q1 , q2 , q3 ;                  // quaternion of sensor frame relative to auxiliary frame
