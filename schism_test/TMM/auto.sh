#!/bin/csh
ncks -d time,0,0 /Users/mirandalv/Documents/projects/TMM/schism_test/output_test/schout_1.nc schout_1_marsh_flag.nc
ncks -d time,4,4 /Users/mirandalv/Documents/projects/TMM/schism_test/output_test/schout_73.nc schout_73_marsh_flag.nc
ncdump -v marsh_flag schout_1_marsh_flag.nc | sed -e '1,/data:/d' -e '$d' | tr -s ' ' '\n' > start_marsh_flag.txt
ncdump -v marsh_flag schout_73_marsh_flag.nc | sed -e '1,/data:/d' -e '$d' | tr -s ' ' '\n' > end_marsh_flag.txt
cat start_marsh_flag.txt | head -n -1 | tail -n +4 > tmp
awk '{print NR  ", " $s}' tmp  > start_marsh_flag_with_line_number.txt
cat end_marsh_flag.txt | head -n -1 | tail -n +4 > tmp
awk '{print NR  ", " $s}' tmp  > end_marsh_flag_with_line_number.txt
rm tmp start_marsh_flag.txt end_marsh_flag.txt

