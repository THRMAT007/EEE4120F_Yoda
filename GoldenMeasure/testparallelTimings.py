# By Matthew Thorburn 
# for EEE4120F Yoda project
import hashlib
import time
import os
import threading
from sys import argv

#Target_password = "76a2173be6393254e72ffa4d6df1030a" # passwd
#Target_password = "1a1dc91c907325c69271ddf0c944bc72" # pass
#Target_password = "d79096188b670c2f81b7001f73801117" # passw
CHARACTERS  = range(97,123) #a-z
MAX_LENGTH  = 6
begin = 0
count =0
#print(argv[1])
#print(argv[2])

Target_password = hashlib.md5(argv[1].encode('utf-8')).hexdigest()
#print(Target_password.hexdigest())
Num_threads = int(argv[2])

def hash(password,number):
    global count, begin 
    count+=1
    found = False
    m = hashlib.md5(password.encode('utf-8'))
    #print(m.hexdigest())
    #print(password)
    #print(Target_password)
    if (m.hexdigest() == Target_password):
        end = time.clock()
        #print("=============")
        #print("Correct Password found: "+password)
        #print(f"it took you {count} guesses")
        print(f"it took: {(end-begin)} seconds")
        #print(f"found by thread: {number}")
        found=True
        os._exit(1)

def recurse(width, position, baseString,number):
    global Num_threads
    if (position < width - 1):
        for char in CHARACTERS:
            recurse(width, position + 1, baseString + "%c" % char,number)
    else:
        for char in CHARACTERS[::Num_threads]:
            hash(baseString + "%c" % (char+number),number)


# Iterates over all char combos up to a given length
def brute_force(number):
    #print(f"brute force attack starting on thread: {number}")
    for baseWidth in range(1, MAX_LENGTH + 1):
        #print(f"width: {baseWidth} starting")
        recurse(baseWidth, 0, "",number)

def menu():
    global begin
    begin = time.clock()
    for i in range(0,Num_threads):
        x = threading.Thread(target=brute_force,args=(i,) )
        x.start()

menu()
    
