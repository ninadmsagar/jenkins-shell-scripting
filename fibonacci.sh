
#!/bin/bash

# Read the number passed as argument
n=$1

# Validate input
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a valid positive integer."
    exit 1
fi

a=0
b=1

echo "Fibonacci series for $n terms:"

for ((i=0; i<n; i++))
do
    echo -n "$a "

    temp=$((a + b))
    a=$b
    b=$temp
done

echo
