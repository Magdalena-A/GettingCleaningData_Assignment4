Variable descriptions
=====================

activities	-	activity description, activity performed during measurment
subject ID	-	unique subject ID, subject performing activity

timeSignal	-	Time domain signals
frequencySignal	-	Frequency domain signals, obtained by applying Fast Fourier Transform (FFT)

Body Acceleration	-	Accelerometer measured signal for body movements
Gravity Acceleration - 	Accelerometer measured signal for gravity

Body gyroscope 	-	Gyroscope signal for body movements
Gravity Gyroscope	-	Gyroscope signal for gravity


Jerk	-	Jerk signals, based on body linear accelerationa and angular velocity
Magnitude	-	Magnitude of three-dimensional signals XYZ signals

mean	-	Mean value
standard deviation	-	Standard deviation

X axis	-	value derived from X axis/direction
Y axis	-	value derived from Y axis/direction
Z axis	-	value derived from Z axis/direction


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeSignal_Acceleration-XYZ and timeSignal_Gravity-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeSignal_Body_Acceleration-XYZ and timeSignal_Gravity_Acceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.)

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals:
- timeSignal_Body_Gyroscope_Jerk
- timeSignal_Body_Acceleration_Jerk-XYZ

Also the Magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm:
- timeSignal_Body_Acceleration_Magnitudenitude
- timeSignal_Gravity_Acceleration_Magnitudenitude
- timeSignal_Body_Acceleration_Jerk_Magnitudenitude
- timeSignal_Body_Gyroscope_Jerk_Magnitudenitude
- timeSignal_Body_Gyroscope_Magnitudenitude

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing:
- frequencySignal_Body_Acceleration-XYZ
- frequencySignal_Body_Acceleration_Jerk-XYZ
- frequencySignal_Body_Gyroscope-XYZ
- frequencySignal_Body_Acceleration_Jerk_Magnitudenitude
- frequencySignal_Body_Gyroscope_Magnitudenitude
- frequencySignal_Body_Gyroscope_Jerk_Magnitudenitude

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeSignal_Body_Acceleration-XYZ
- timeSignal_Gravity_Acceleration-XYZ
- timeSignal_Body_Acceleration_Jerk-XYZ
- timeSignal_Body_Gyroscope-XYZ
- timeSignal_Body_Gyroscope_Jerk-XYZ
- timeSignal_Body_Acceleration_Magnitude
- timeSignal_Gravity_Acceleration_Magnitude 
- timeSignal_Body_Acceleration_Jerk_Magnitude
- timeSignal_Body_Gyroscope_Magnitude
- timeSignal_Body_Gyroscope_Jerk_Magnitude
- frequencySignal_Body_Acceleration-XYZ
- frequencySignal_Body_Acceleration_Jerk-XYZ
- frequencySignal_Body_Gyroscope-XYZ
- frequencySignal_Body_Acceleration_Magnitude
- frequencySignal_Body_Acceleration_JerkMagnitude
- frequencySignal_Body_Gyroscope_Magnitude
- frequencySignal_Body_Gyroscope_Jerk_Magnitude



Complete set of variables
==========================

activities
subject_ID
timeSignal_Body_Acceleration-mean-X_axis
timeSignal_Body_Acceleration-mean-Y_axis
timeSignal_Body_Acceleration-mean-Z_axis
timeSignal_Body_Acceleration-standard_deviation-X_axis
timeSignal_Body_Acceleration-standard_deviation-Y_axis
timeSignal_Body_Acceleration-standard_deviation-Z_axis
timeSignal_Gravity_Acceleration-mean-X_axis
timeSignal_Gravity_Acceleration-mean-Y_axis
timeSignal_Gravity_Acceleration-mean-Z_axis
timeSignal_Gravity_Acceleration-standard_deviation-X_axis
timeSignal_Gravity_Acceleration-standard_deviation-Y_axis
timeSignal_Gravity_Acceleration-standard_deviation-Z_axis
timeSignal_Body_Acceleration_Jerk-mean-X_axis
timeSignal_Body_Acceleration_Jerk-mean-Y_axis
timeSignal_Body_Acceleration_Jerk-mean-Z_axis
timeSignal_Body_Acceleration_Jerk-standard_deviation-X_axis
timeSignal_Body_Acceleration_Jerk-standard_deviation-Y_axis
timeSignal_Body_Acceleration_Jerk-standard_deviation-Z_axis
timeSignal_Body_Gyroscope-mean-X_axis
timeSignal_Body_Gyroscope-mean-Y_axis
timeSignal_Body_Gyroscope-mean-Z_axis
timeSignal_Body_Gyroscope-standard_deviation-X_axis
timeSignal_Body_Gyroscope-standard_deviation-Y_axis
timeSignal_Body_Gyroscope-standard_deviation-Z_axis
timeSignal_Body_Gyroscope_Jerk-mean-X_axis
timeSignal_Body_Gyroscope_Jerk-mean-Y_axis
timeSignal_Body_Gyroscope_Jerk-mean-Z_axis
timeSignal_Body_Gyroscope_Jerk-standard_deviation-X_axis
timeSignal_Body_Gyroscope_Jerk-standard_deviation-Y_axis
timeSignal_Body_Gyroscope_Jerk-standard_deviation-Z_axis
timeSignal_Body_Acceleration_Magnitude-mean
timeSignal_Body_Acceleration_Magnitude-standard_deviation
timeSignal_Gravity_Acceleration_Magnitude-mean
timeSignal_Gravity_Acceleration_Magnitude-standard_deviation
timeSignal_Body_Acceleration_Jerk_Magnitude-mean
timeSignal_Body_Acceleration_Jerk_Magnitude-standard_deviation
timeSignal_Body_Gyroscope_Magnitude-mean
timeSignal_Body_Gyroscope_Magnitude-standard_deviation
timeSignal_Body_Gyroscope_Jerk_Magnitude-mean
timeSignal_Body_Gyroscope_Jerk_Magnitude-standard_deviation
frequencySignal_Body_Acceleration-mean-X_axis
frequencySignal_Body_Acceleration-mean-Y_axis
frequencySignal_Body_Acceleration-mean-Z_axis
frequencySignal_Body_Acceleration-standard_deviation-X_axis
frequencySignal_Body_Acceleration-standard_deviation-Y_axis
frequencySignal_Body_Acceleration-standard_deviation-Z_axis
frequencySignal_Body_Acceleration_Jerk-mean-X_axis
frequencySignal_Body_Acceleration_Jerk-mean-Y_axis
frequencySignal_Body_Acceleration_Jerk-mean-Z_axis
frequencySignal_Body_Acceleration_Jerk-standard_deviation-X_axis
frequencySignal_Body_Acceleration_Jerk-standard_deviation-Y_axis
frequencySignal_Body_Acceleration_Jerk-standard_deviation-Z_axis
frequencySignal_Body_Gyroscope-mean-X_axis
frequencySignal_Body_Gyroscope-mean-Y_axis
frequencySignal_Body_Gyroscope-mean-Z_axis
frequencySignal_Body_Gyroscope-standard_deviation-X_axis
frequencySignal_Body_Gyroscope-standard_deviation-Y_axis
frequencySignal_Body_Gyroscope-standard_deviation-Z_axis
frequencySignal_Body_Acceleration_Magnitude-mean
frequencySignal_Body_Acceleration_Magnitude-standard_deviation
frequencySignal_Body_Acceleration_Jerk_Magnitude-mean
frequencySignal_Body_Acceleration_Jerk_Magnitude-standard_deviation
frequencySignal_Body_Gyroscope_Magnitude-mean
frequencySignal_Body_Gyroscope_Magnitude-standard_deviation
frequencySignal_Body_Gyroscope_Jerk_Magnitude-mean
frequencySignal_Body_Gyroscope_Jerk_Magnitude-standard_deviation