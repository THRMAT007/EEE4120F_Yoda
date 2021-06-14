passwords=('p' 'pa' 'pas' 'pass' 'passw' 'passwd')
threads=(1 2 13)
echo "Staring testing" > timings.txt
for t in ${passwords[@]}
do
    echo "staring testing with password = $t" >> timings.txt
    for h in ${threads[@]}
        do
            echo "staring testing with threads = $h" >> timings.txt
            for j in {1..10}
                do
                    python3 -u testparallelTimings.py $t $h >>timings.txt
                done
        done
    
done