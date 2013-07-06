#!/bin/bash
dig +short txt $1.wp.dg.cx \
| espeak --stdin &
#dig +short txt $1.wp.dg.cx | diy - chorus 0.6 1 35 0.6 5 0.8 -t reverb 30 60 35 40 phaser 0.8 1 3 0.30 -t bass 5 120 flanger 0 3 -20 85 5 triangle 70 gain 5 normg +short txt $1.wp.dg.cx | festival --tts &
#|wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=hello+world
#dig +short txt $1.wp.dg.cx | festival --tts &
#festival query.tmp &
#rm -r query.tmp

