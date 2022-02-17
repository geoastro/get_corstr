`get_corstr.sh`

Batch download `CORS-TR (TUSAGA-AKTIF)` station data

**Author : Kerem Ha. @FU-Berlin**

### This script downloads (N,S,H) time series from `harita.gov.tr`'s website:
[https://www.harita.gov.tr/public/sunum/](https://www.harita.gov.tr/public/sunum/)

I wrote this script to batch download data from above link

Created Thu Feb 17 15:24:41 CET 2022

Batch download (N,E,U) time series of CORSTR sites

`Usage: get_corstr <FILE NAME>`

`<FILE NAME> : Column file with 4 char site names`

`Example: ./get_corstr.sh tusaga.txt`
  
 List of sation IDs are required as a column file (i.e. tusaga.txt)
