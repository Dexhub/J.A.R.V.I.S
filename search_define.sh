#!/bin/bash
wget -qO- -U "Mozilla/6.0 (Macintosh; I; Intel Mac OS X 11_7_9; de-LI; rv:1.9b4) Gecko/2012010317 Firefox/10.0a4" http://www.google.co.uk/search\?q\=$1\&tbs\=dfn:1 \
| grep --perl-regexp --only-matching '(?<=<li style="list-style:none">)[^<]+' \
| head -1 \
| espeak --stdin -w soundfile.wav \
sox soundfile.wav -t raw -r 8012 -u -b -c 1 | cat > /dev/dsp


