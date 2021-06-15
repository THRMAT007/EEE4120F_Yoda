import hashlib
import time
import os
from sys import argv
import random
import string

TargetHash  = "1a1dc91c907325c69271ddf0c944bc72" # pass
count=0

pasword = 'pass'
print(f"Hashing of pass")
for i in range(0,10):   
    begin = time.clock()
    TargetPassword = hashlib.md5(pasword.encode('utf-8')).hexdigest()
    if(TargetPassword ==  TargetHash):  
        end = time.clock()
    else:
        end = time.clock()
    t = end-begin
    count+=t
average = count/10
print(average)