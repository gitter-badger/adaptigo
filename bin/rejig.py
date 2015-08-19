#!/usr/bin/env python   
import fileinput
import re
 
for line in fileinput.input(inplace=1, backup='.bak'):
    line = re.sub('debian/ jessie main','debian/ jessie main non-free contrib', line.rstrip())
    line = re.sub('jessie/updates main','jessie/updates main non-free contrib', line.rstrip())
    line = re.sub('debian/ jessie-updates main','debian/ jessie-updates main non-free contrib', line.rstrip())
    

    print(line)