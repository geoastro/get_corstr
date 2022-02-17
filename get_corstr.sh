#!/bin/bash

# Author : Kerem Ha. @FU-Berlin
# This script downloads (N,S,H) time series from HGK's website
# Link : https://www.harita.gov.tr/public/sunum/
# I wrote this script to batch download data from above link
# Created Thu Feb 17 15:24:41 CET 2022

if [ "$1" == "" ]; then
 echo " =============================================================="
 echo " "
 echo " Batch download (N,E,U) time series of CORSTR sites"
 echo " "
 echo " "
 echo " Usage: get_corstr <FILE NAME>"
 echo " <FILE NAME> : Column file with 4 char site names"
 echo " "
 echo " Example: ./get_corstr.sh tusaga.txt"
 echo " "
 echo " Kerem Ha. Feb 22"
 echo " "
 echo " =============================================================="
else
 echo " Downloading files ... "   
fi

urlbase="https://www.harita.gov.tr/public/sunum/zaman_serileri_rar/mb_"
ext=".rar"

function download_stationData() {

 wget $urlbase$1$ext

}

while IFS='' read -r StationsfromFile || [[ -n "${StationsfromFile}" ]]; do

    download_stationData "$StationsfromFile"

done < "$1"
