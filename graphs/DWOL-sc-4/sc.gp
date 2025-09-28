# LOG_FILE = logs/2025-09-28-12-32-03.442683/fxmark.log
# SYSTEM = Linux fvm 5.15.0d3846e8+ #2 SMP Sat Sep 27 17:03:46 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 1G
# DURATION = 180s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWTL,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,filebench_varmail,filebench_oltp,filebench_fileserver,dbench_client,MRPL,MRPM,MRPH,MRDM,MRDL,DRBH,DRBM,DRBL
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 3

set term pdfcairo size 4.6in,2.3in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 1,2

set title 'nvme:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
