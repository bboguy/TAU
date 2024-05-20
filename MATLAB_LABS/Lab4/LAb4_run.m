clc
close all
clear all 
ki = 0.96499
kd = 0.078794
kp = 0.46802
open("untitled3.slx")
w = tf ([kd kp ki],[0.0001 1 0])
Discr = c2d(w, 0.01, "tustin")


  