#!/bin/bash

Query=$(dig +short txt $1.wp.dg.cx \
| sed -r 's/\http[^ ]*/ /g' )

if [ "$Query" ]; then
	python GoogleTTS.py -l en -s $Query
	echo "$Query\"" | wc 
	play out.mp3 &
else

	python GoogleTTS.py -l en -s "No information Available on $1"
	play out.mp3 &
	

fi



#wget -q -U Mozilla -O output.mp3 "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$Query\""
#echo "http://translate.google.com/translate_tts?ie=UTF-8&tl=en&q=$Query\""
#play output.mp3






<<COMMENT1

Query=$(dig +short txt $1.wp.dg.cx \
| sed -r 's/ +/+/g' \
| sed -r 's/\.[^ ]*/ /g' \
| sed -r 's/[,|():]//g' \
| sed -r 's/ +//g' )

COMMENT1
