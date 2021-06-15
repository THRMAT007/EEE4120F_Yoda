# By Matthew Thorburn 
# for EEE4120F Yoda project
# User can guess the password in this program, also used for generating target hashes
import hashlib
import time
import os

#TargetHash = "1a1dc91c907325c69271ddf0c944bc72" # pass
TargetHash = "76a2173be6393254e72ffa4d6df1030a" # passwd
#TargetHash = "d79096188b670c2f81b7001f73801117" # passw

CHARACTERS  = range(97,122) #a-z
MAX_LENGTH  = 7

def hash(password):
    global counter, begin
    counter+=1
    hashed = hashlib.md5(password.encode('utf-8')) # need to encode password to 'utf-8' format for md5 to hash nicely. 
    print(hashed.hexdigest()) # can view outputted hash of guessed word
    if (hashed.hexdigest() == TargetHash): #checks against target
        end = time.clock() #end timer
        print("Correct Password found: "+password)
        print(f"it took you {counter} guesses")
        print(f"it took: {(end-begin)} seconds")
        os._exit(1) #ends program
    else: 
        print("that was not correct")

def start(): 
    global begin
    begin = time.clock() #start timer
    while(1):
        guess = input("please enter a password \n") #user can manually guess the password.
        hash(guess) #check password

#initiate global values
begin = 0
counter =0
start()
    
