#!/bin/bash
echo 'masukkan awalan : '
read a
echo 'masukkan batas akhir : '
read b
echo 'masukkan kelipatan : '
read c
f=0
echo "
"
for ((d=$a;d<=$b;d=d+1))
do
let e=$a%$c
if [ $e -ne 0 ]
then
echo "$a"
let a=$a+1

else
echo 'eureka'
let a=$a+1
let f=$f+1
fi
done
echo "$f"
h=1
while [ $f -gt 1 ]
do
h=$((h*f))
f=$((f-1))

done
echo "$h"

