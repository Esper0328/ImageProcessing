#!/bin/bash

if [ "$#" -eq "4" ]
then
    echo "Vailid number of argument\n"
    cutCommand="ffmpeg -ss $3 -i $1 -t $4 -c copy output_$2"
    eval $cutCommand
    silentCommand="ffmpeg -i output_$2 -vcodec copy -an silent_$2"
    eval $silentCommand
else
    echo "Invalid number of argument. Expect number of Argument is 4.\n"
    echo "Expected aruguments are InputFilename, OutputFilename, StartTime, and Duration\n"
fi
