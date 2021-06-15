import hashlib
import time
import os
from sys import argv
import random
import string



average = 0
count =0

paswords = random.choice(string.ascii_lowercase)

for j in range(0,20):
    print(f"Hashing of {paswords}")
    for i in range(0,10):   
        begin = time.clock()
        Target_password = hashlib.md5(paswords.encode('utf-8')).hexdigest()
        end = time.clock()
        t = end-begin
        count+=t
    average = count/10
    print(average)
    paswords += random.choice(string.ascii_lowercase)