# LOG_FILE = logs/2025-04-16-write-write/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #4 SMP Tue Apr 8 14:16:18 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 12G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,DWTL
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 66

set term pdfcairo size 6.8999999999999995in,18.4in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 8,3

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
