# LOG_FILE = ./logs/2025-04-03-12-08-20.713933/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #1 SMP Fri Mar 14 12:51:39 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 32G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,filebench_varmail,filebench_oltp,filebench_fileserver,dbench_client,MRPL,MRPM
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 48

set term pdfcairo size 6.8999999999999995in,4.6in font ',10'
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 2,3

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWAL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWAL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22699 59.2025 0 39.5706
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22699 59.2025 0 39.5706
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22699 59.2025 0 39.5706
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22699 59.2025 0 39.5706
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWAL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWAL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 6.28931 0 93.2914
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 6.28931 0 93.2914
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 6.28931 0 93.2914
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 6.28931 0 93.2914
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWOL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWOL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.95825 93.0417 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.95825 93.0417 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.95825 93.0417 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.95825 93.0417 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWOL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWOL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.623701 6.02911 0 93.3472
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.623701 6.02911 0 93.3472
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.623701 6.02911 0 93.3472
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.623701 6.02911 0 93.3472
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
  "f2fs" 4.57256 95.4274 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.57256 95.4274 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.57256 95.4274 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.57256 95.4274 0 0
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
  "f2fs" 4.37376 95.6262 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.37376 95.6262 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.37376 95.6262 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.37376 95.6262 0 0
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
  "f2fs" 35.7143 64.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.2857 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.2857 0 0
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
  "f2fs" 30.8151 69.1849 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 30.8151 69.1849 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 30.8151 69.1849 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 30.8151 69.1849 0 0
e

unset multiplot
set output
