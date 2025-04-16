# LOG_FILE = logs/2025-04-16-read-read/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #4 SMP Tue Apr 8 14:16:18 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 12G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = MRPL,MRPM,MRPH,MRDM,MRDL,DRBH,DRBM,DRBL
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 48

set term pdfcairo size 6.8999999999999995in,13.799999999999999in font ',10'
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 6,3

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBH:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBH:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7143 89.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7143 89.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7143 89.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7143 89.2857 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBH:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBH:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.977995 26.4059 0 72.6161
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.977995 26.4059 0 72.6161
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.977995 26.4059 0 72.6161
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.977995 26.4059 0 72.6161
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.6931 89.1089 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.6931 89.1089 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.6931 89.1089 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.6931 89.1089 0 0.19802
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.42857 29.0476 0 69.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.42857 29.0476 0 69.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.42857 29.0476 0 69.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.42857 29.0476 0 69.5238
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.338 89.662 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.338 89.662 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.338 89.662 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.338 89.662 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.21655 28.9538 0 69.8297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.21655 28.9538 0 69.8297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.21655 28.9538 0 69.8297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.21655 28.9538 0 69.8297
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9841 73.0159 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9841 73.0159 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9841 73.0159 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9841 73.0159 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.2485 74.7515 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.2485 74.7515 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.2485 74.7515 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.2485 74.7515 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9307 73.0693 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9307 73.0693 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9307 73.0693 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.9307 73.0693 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.7937 74.2063 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.7937 74.2063 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.7937 74.2063 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.7937 74.2063 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPH:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPH:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.9901 65.0099 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.9901 65.0099 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.9901 65.0099 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.9901 65.0099 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPH:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPH:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.6825 60.3175 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.6825 60.3175 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.6825 60.3175 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.6825 60.3175 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.56349 95.4365 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.56349 95.4365 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.56349 95.4365 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.56349 95.4365 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.36779 94.6322 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.36779 94.6322 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.36779 94.6322 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.36779 94.6322 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.1032 62.8968 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.1032 62.8968 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.1032 62.8968 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.1032 62.8968 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.9722 62.0278 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.9722 62.0278 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.9722 62.0278 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.9722 62.0278 0 0
e

unset multiplot
set output
