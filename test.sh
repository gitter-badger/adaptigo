#!/bin/bash
if (uname -a | grep 'x86_64'); then 
 
  # 64-bit stuff here
	echo "64bit"
else
   # 32-bit stuff here
	echo "32bit"
fi
