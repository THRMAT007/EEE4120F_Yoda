# By Matthew Thorburn 
# for EEE4120F Yoda project
import hashlib
import time
import os
import threading
from sys import argv

CHARACTERS  = range(97,123) #a-z
MAX_LENGTH  = 6
begin = 0

TargetHash = hashlib.md5(argv[1].encode('utf-8')).hexdigest() # takes user inputted word to create the target password
Num_threads = int(argv[2]) # takes user input number for number of threads ( to be 1,2,13)

def hash(password,number):
    global begin 
    hashed = hashlib.md5(password.encode('utf-8')) # need to encode password to 'utf-8' format for md5 to hash nicely. 
    if (hashed.hexdigest() == TargetHash):
        end = time.clock() #end timing counter
        print(f"it took: {(end-begin)} seconds")
        os._exit(1) # ends program. probably should join threads, but leave that to the os to sort out when killing program

def recurse(width, position, baseString,number): #clever recursion code to iterate through all combinations of letter. could use a ripple counter instead, but this works.
    global Num_threads
    if (position < width - 1): # used to build up the word to 'width' length
        for char in CHARACTERS: 
            recurse(width, position + 1, baseString + "%c" % char,number)
    else: #when in last position of 'width' length word.
        for char in CHARACTERS[::Num_threads]:
            hash(baseString + "%c" % (char+number),number)


# Iterates over all char combos up to a given length
def brute_force(number):
    for baseWidth in range(1, MAX_LENGTH + 1): #iterate through all lengths
        recurse(baseWidth, 0, "",number) #starts the bruteforce attack for given length

def menu():
    global begin
    begin = time.clock() #start timing counter
    for i in range(0,Num_threads): #start threading process
        x = threading.Thread(target=brute_force,args=(i,) )
        x.start()

menu()
    
