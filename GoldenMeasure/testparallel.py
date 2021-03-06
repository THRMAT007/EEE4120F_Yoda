# By Matthew Thorburn 
# for EEE4120F Yoda project
import hashlib
import time
import os
import threading

TargetHash = "76a2173be6393254e72ffa4d6df1030a" # passwd
#TargetHash = "1a1dc91c907325c69271ddf0c944bc72" # pass
#TargetHash = "d79096188b670c2f81b7001f73801117" # passw
CHARACTERS  = range(97,123) #a-z
MAX_LENGTH  = 7
Num_threads =1


def hash(password,number):
    global count, begin
    count+=1
    hashed = hashlib.md5(password.encode('utf-8'))
    #print(m.hexdigest())
    if (hashed.hexdigest() == TargetHash):
        end = time.clock()
        print(f"Correct Password found: {password}")
        print(f"it took you {count} guesses")
        print(f"it took: {(end-begin)} seconds")
        print(f"found by thread: {number}")
        os._exit(1) #ends program

def recurse(width, position, baseString,number): #clever recursion code to iterate through all combinations of letter. could use a ripple counter instead, but this works.
    if (position < width - 1):
        for char in CHARACTERS:
            recurse(width, position + 1, baseString + "%c" % char,number)
    else:
        for char in CHARACTERS[::Num_threads]:
            hash(baseString + "%c" % (char+number),number)


# Iterates over all char combos up to a given length
def brute_force(number):
    print(f"brute force attack starting on thread: {number}")
    for baseWidth in range(1, MAX_LENGTH + 1):
        #print(f"width: {baseWidth} starting")
        recurse(baseWidth, 0, "",number)


def start():
    global begin
    begin = time.clock()
    while(1):
        guess = input("please enter a password \n")
        hash(guess,0)

def menu():
    print("Hello, Welcome to password hasher")
    guess = input("Enter 1 for manual password entry, or 2 for brute force attack \n")
    if (guess=='1'):
        start()
    else:
        global begin
        begin = time.clock() #start timer
        for i in range(0,Num_threads): #start threads
            x = threading.Thread(target=brute_force,args=(i,) )
            x.start()
        
#initiate global values
begin = 0
count =0
menu()
    
