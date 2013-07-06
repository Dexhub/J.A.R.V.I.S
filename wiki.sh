#!/bin/bash
. ~/.bashrc
Query=$(dig +short txt $1.wp.dg.cx \
| sed -r 's/\http[^ ]*/ /g' )
echo $Query
if [ "$Query" ]; then
  speak "$Query"
else
	speak "No information Available on $1"
fi
