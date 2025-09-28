# LOG_FILE = logs/2025-09-28-12-07-41.925531/fxmark.log
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
set_out='set output "`if test -z $OUT; then echo util.4.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 1,2

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWAL:*:4:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWAL:4
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.480501 29.0696 29.8524 35.6337
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.480501 29.0696 29.8524 35.6337
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.480501 29.0696 29.8524 35.6337
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.480501 29.0696 29.8524 35.6337
e

unset multiplot
set output
