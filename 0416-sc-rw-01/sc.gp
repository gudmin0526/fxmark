# LOG_FILE = logs/2025-04-16-read-write/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #4 SMP Tue Apr 8 14:16:18 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 12G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = MRPM_bg,DRBM_bg,MRDM_bg,DRBH_bg,DRBL_bg,MRDL_bg
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 36

set term pdfcairo size 6.8999999999999995in,9.2in font ',10'
set_out='set output "`if test -z $OUT; then echo sc.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 4,3

set title 'nvme:DRBH_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBH_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBH_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBL_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBL_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:DRBM_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:DRBM_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDL_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDL_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDL_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDL_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDM_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDM_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRDM_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRDM_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPM_bg:bufferedio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPM_bg:bufferedio.dat' using 1:2 title 'f2fs' with lp ps 0.5

set title 'nvme:MRPM_bg:directio'
set xlabel '# cores'
set ylabel 'M ops/sec'
plot [0:][0:] 'nvme:f2fs:MRPM_bg:directio.dat' using 1:2 title 'f2fs' with lp ps 0.5

unset multiplot
set output
