# EEE4120F_Yoda
Some shitty python code for Golden measure for password breaking of md5 hashed password
All code run using python3
check all required libaries are installed prior to running code. all libaries can be found with pip3 install 'libary'
Required libaries: hashlib, os, time, random, sys, string, threading

test.py was the first iteration of the code. User can enter is a word, the program hashes it, displays the hashed password and compared it to the stored target hash. program is used to generate hashes for other programs as well as testing for correct comparrion. Here it was found that the string words need to be encoded to work with hashlib.md5() 

testparallel.py was an attempt to of making a brute force method using multiple threads. is work well but not very optimized and require the user to change the number of threads and targeted hashed password in the code to run checks. As such testparallelTimings.py was make to make up for these short comings

testparallelTimings.py is the final iteration for the brute-force attach using threads. the program take in two inputs , the target password, and the number of threads. eg Python3 testparallelTimings.py password 2 . This program was used to generate the timing data using script.sh to automate the process. to replecate the timings for Bruteforce.xlsx call ./script will generate the timing results in timings.txt . 

hashingTiming.py is used to determine the hashing times for different lengths of password. 

script.sh was used to automate the collection of timing data.
