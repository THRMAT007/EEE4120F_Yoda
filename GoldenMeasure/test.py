# By Matthew Thorburn 
# for EEE4120F Yoda project
import hashlib
import time
import os

#Target_password = "1a1dc91c907325c69271ddf0c944bc72" # pass
Target_password = "76a2173be6393254e72ffa4d6df1030a" # passwd
#Target_password = "d79096188b670c2f81b7001f73801117" # passw
CHARACTERS  = range(97,122) #a-z
MAX_LENGTH  = 7

def hash(password):
    global count, begin
    count+=1
    found = False
    
    m = hashlib.md5(password.encode('utf-8'))
    
    print(m.hexdigest())
    #print("Time taken to hash password: ")
    #print(end-start)
    if (m.hexdigest() == Target_password):
        end = time.clock()
        print("=============")
        print("Correct Password found: "+password)
        print(f"it took you {count} guesses")
        print(f"it took: {(end-begin)} seconds")
        found=True
        os._exit(1)
    #else: 
        #print("that was not correct")


def recurse(width, position, baseString):
    if (position < width - 1):
        for char in CHARACTERS:
            recurse(width, position + 1, baseString + "%c" % char)
    else:
        for char in CHARACTERS:
            hash(baseString + "%c" % char)

# Iterates over all char combos up to a given length
def brute_force():
    print("brute force attack starting")
    for baseWidth in range(1, MAX_LENGTH + 1):
        #print(f"width: {baseWidth} starting")
        recurse(baseWidth, 0, "")


def start():
    global begin
    begin = time.clock()
    while(1):
        guess = input("please enter a password \n")
        hash(guess)

def menu():
    print("Hello, Welcome to password hasher")
    guess = input("Enter 1 for manual password entry, or 2 for brute force attack \n")
    if (guess=='1'):
        start()
    else:
        global begin
        begin = time.clock()
        brute_force()

#init
begin = 0
count =0
menu()
    
