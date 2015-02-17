#!/bin/bash 
espeak $* -w soundfile.wav
sox soundfile.wav -t raw -r 8012 -u -b -c 1 | cat > /dev/dsp

#play chorus 0.6 1 35 0.6 5 0.8 -t reverb 30 60 35 40 phaser 0.8 1 3 0.30 -t bass 5 120 flanger 0 3 -20 85 5 triangle 70 gain 5 norm
