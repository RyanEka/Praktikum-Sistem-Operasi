#!/bin/bash
clear
i=0
loop=y

input(){
	let i=i+1
	echo "Masukkan Nama : "
	read nama;
	nama[$i]=$nama
	echo "Masukkan npm : "
	read npm;
	npm[$i]=$npm
	echo "Masukkan nama Program studi : "
	read jurusan;
	jurusan[$i]=$jurusan
	echo "Masukkan nama Fakultas : "
	read fakultas;
	fakultas[$i]=$jurusan
}

view(){
	if [[ $i -gt 0 ]]
	then
  	for((j=0; j<$i; j++))
  	do
    	echo "Nama 	: ${nama[$j]}"
    	echo "NPM  	: ${npm[$j]}"
    	echo "Jurusan  : ${jurusan[$j]}"
    	echo "Fakultas : ${fakultas[$j]}"
  	done
	else
  	echo "data kosong"
	fi
}

update(){
	echo "Masukkan npm yang datanya ingin dicari : "
	read cnpm;
	for((j=0; j<$i; j++))
	do
  	if [[ $cnpm == ${npm[$i]} ]]
  	then
    	echo "Masukkan Nama : "
    	read nama;
    	nama[$i]=$nama
    	echo "Masukkan npm : "
    	read npm;
    	npm[$i]=$npm
    	echo "Masukkan nama Program studi : "
    	read jurusan;
    	jurusan[$i]=$jurusan
    	echo "Masukkan nama Fakultas : "
    	read fakultas;
    	fakultas[$i]=$jurusan
  	fi
	done
}

while [ $loop == 'y' ]
do
echo "Data Mahasiswa"
echo "1. Input"
echo "2. View"
echo "3. Update"
echo "4. Exit"
read pilihan

case $pilihan in
	1)
	input
	;;

	2)
	view
	;;

	3)
	update
	;;

	4)
	break
	;;
esac
done

