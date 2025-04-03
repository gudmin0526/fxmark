# LOG_FILE = logs/2025-04-03-10-51-20.891537/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #1 SMP Fri Mar 14 12:51:39 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 32G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,DWTL,filebench_varmail,filebench_oltp,filebench_fileserver,dbench_client,MRPL,MRPM,MRPH,MRDM,MRDL,DRBH,DRBM,DRBL
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 138

set term pdfcairo size 6.8999999999999995in,16.099999999999998in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 7,3

set title 'nvme:DRBH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWAL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWAL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWAL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWOM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWOM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWSL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWSL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWSL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWTL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DWTL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DWTL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPH:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPH:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPH:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPH:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWCL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWCL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWCL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWCL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWCM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWCM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWCM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWCM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWRL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWRL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWRL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWRL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWRM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWRM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWRM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWRM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWUL:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWUL:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWUL:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWUL:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWUM:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWUM:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MWUM:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MWUM:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
