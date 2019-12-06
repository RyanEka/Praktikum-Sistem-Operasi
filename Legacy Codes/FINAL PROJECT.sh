declare -a kode
declare -a jenis
declare -a jumlah
declare -a kualitas
declare -a sumber


i=0
n=0


insert(){

    echo -n "Kode Lem			: "
    read kode_lem
    echo -n "Jenis Lem			: "
    read jenis_lem
    echo -n "Kualitas			: "
    read kual_lem
    echo -n "Jumlah Lem			: "
    read jum_lem
    echo -n "Sumber Supplier		: "
    read sum_lem

    kode[$i]=$kode_lem
    jenis[$i]=$jenis_lem
    kualitas[$i]=$kual_lem
    jumlah[$i]=$jum_lem
    sumber[$i]=$sum_lem

    i=$i+1
    n=$n+1

}

view(){

    if(( $n==0 ))
    then
        echo " Data Lem kosong "
fi
       for ((i=0;i<n;i++))
      do
        echo "=================================================="
        echo "Kode Lem                  : ${kode[$i]}"
	echo "Jenis Lem         	: ${jenis[$i]}"
        echo "Kualitas Lem	        : ${kualitas[$i]}"
        echo "Jumlah Lem          	: ${jumlah[$i]}"
        echo "Sumber Supplier      	: ${sumber[$i]}"
        echo "=================================================="
    done
}

search(){
    echo -n "Masukan kode lem : "
    read kodee
    a=0

    for((i=0;i<n;i++))
    do
        if [[ $kodee -eq ${kode[$i]} ]]
        then
            a=1
            break
        fi
    done

    if [[ $a == 1 ]]
    then
        echo "Data Lem yang anda input "
        echo "=================================================="
       echo "Kode Lem                   : ${kode[$i]}"
	echo "Jenis Lem         	: ${jenis[$i]}"
        echo "Kualitas Lem	        : ${kualitas[$i]}"
        echo "Jumlah Lem          	: ${jumlah[$i]}"
        echo "Sumber Supplier      	: ${sumber[$i]}"
        echo "=================================================="
    else
        echo "Data Lem tidak ditemukan"
    fi
}

update(){
    echo -n "Masukkan kode Lem yang akan diUPDATE : "
    read kodee
    b=0

    for((i=0;i<n;i++))
    do
        if(( $kodee == ${kode[$i]} ))
        then
            b=1
            break
        fi
    done

    if(( $b == 1 ))
    then
        u=0
    echo -n "Jenis Lem       		: "
    read jenis_lem
    echo -n "Kualitas           	: "
    read kual_lem
    echo -n "Jumlah Lem       		: "
    read jum_lem
    echo -n "Sumber Supplier    	: "
    read sum_lem

	    jenis[$i]=$jenis_lem
            kualitas[$i]=$kual_lem
            jumlah[$i]=$jum_lem
            sumber[$i]=$sum_lem

    	else
            echo "Lem belum terdaftar"
    	fi
}

delete(){
    echo -n "Masukkan Kode  data Lem yang ingin dihapus : "
    read kodee
    c=0

    for((i=0;i<n;i++))
    do 
        if [[ $kodee -eq ${kode[$i]} ]]
        then
            c=1
            break
        fi
    done

    if [[ $c == 1 ]]
    then
        unset jenis[$i]
        unset kualitas[$i]
        unset jumlah[$i]
        unset sumber[$i]
        echo "Data Lem telah dihapus"

        jenis[$i]=$jenis_lem
        kualitas[$i]=$kual_lem
        jumlah[$i]=$jum_lem
        sumber[$i]=$sum_lem
        n=$n-1

    else
        echo "Data Lem tidak terdaftar"
    fi
}
Link(){
firefox https://id.quora.com/Apa-bahan-yang-terkandung-dalam-lem-Aica-Aibon-sehingga-membuat-orang-yang-menghirupnya-teler-dan-ketagihan/
}
while :;
do
    echo "==========================================================="
    echo "                  SISTEM DATA                       "
    echo "                   LEM AIBON                         "
    echo "==========================================================="
    echo ""
    echo " 1. INPUT DATA LEM"
    echo " 2. LIHAT DATA LEM"
    echo " 3. CARI DATA LEM"
    echo " 4. UPDATE DATA LEM"
    echo " 5. HAPUS DATA LEM"
    echo " 6. LINK INFO "
    echo " 7. EXIT"
    echo ""
    echo -n "Pilih menu : "
    read pilih

    if(( $pilih == 1 ))
    then
        clear
        insert
        clear
    elif(( $pilih == 2 ))
    then
        clear
        view
    elif(( $pilih == 3 ))
    then 
        clear
        search
    elif(( $pilih == 4 ))
    then
        clear
        update
        clear
    elif(( $pilih == 5 ))
    then 
        clear
        delete
    elif(( $pilih == 6 ))
    then
        Link
	clear
    elif(( $pilih == 7 ))
    then
	exit
    else
        echo "pilihannya gaada!"
    fi
done

