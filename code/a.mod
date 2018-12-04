set PROJECTS;

param amount >= 0;
param low {1..2};
param high {1..2};

param proj {PROJECTS, 1..2};

var x {1..2};# := 39.69097 -105.0422656;

maximize min_distance:
    #min {i in PROJECTS} (sqrt((x[1] - proj[i,1])*(x[1] - proj[i,1]) +
    #                          (x[2] - proj[i,2])*(x[2] - proj[i,2])));
    min {i in PROJECTS} (abs((x[1] - proj[i,1]) + abs(x[2] - proj[i,2])));

subject to in_rangel1: x[1] >= low[1];
subject to in_rangeh1: x[1] <= high[1];
subject to in_rangel2: x[2] >= low[2];
subject to in_rangeh2: x[2] <= high[2];
