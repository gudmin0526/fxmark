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
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 7,3

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
  "f2fs" 10.7356 89.2644 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7356 89.2644 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7356 89.2644 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.7356 89.2644 0 0
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
  "f2fs" 0.697674 25.814 0 73.4884
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.697674 25.814 0 73.4884
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.697674 25.814 0 73.4884
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.697674 25.814 0 73.4884
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
  "f2fs" 11.3095 88.6905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.6905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.6905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.6905 0 0
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
  "f2fs" 0.945626 23.1678 0 75.8865
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.945626 23.1678 0 75.8865
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.945626 23.1678 0 75.8865
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.945626 23.1678 0 75.8865
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
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
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
  "f2fs" 0.479616 22.0624 0 77.458
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.479616 22.0624 0 77.458
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.479616 22.0624 0 77.458
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.479616 22.0624 0 77.458
e

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
  "f2fs" 2.20126 57.5472 0 40.2516
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20126 57.5472 0 40.2516
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20126 57.5472 0 40.2516
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20126 57.5472 0 40.2516
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
  "f2fs" 0.414079 7.24638 0 92.3395
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414079 7.24638 0 92.3395
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414079 7.24638 0 92.3395
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414079 7.24638 0 92.3395
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
  "f2fs" 0.419287 5.03145 0 94.5493
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 5.03145 0 94.5493
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 5.03145 0 94.5493
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.419287 5.03145 0 94.5493
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWOM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWOM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.15109 91.8489 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.15109 91.8489 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.15109 91.8489 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.15109 91.8489 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWOM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWOM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.420168 5.46218 0 94.1176
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.420168 5.46218 0 94.1176
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.420168 5.46218 0 94.1176
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.420168 5.46218 0 94.1176
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWSL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWSL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.416667 7.08333 0 92.5
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.416667 7.08333 0 92.5
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.416667 7.08333 0 92.5
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.416667 7.08333 0 92.5
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWSL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWSL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.81818 0 92.562
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.81818 0 92.562
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.81818 0 92.562
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.81818 0 92.562
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWTL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWTL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 99.1111 0 0.222222
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 99.1111 0 0.222222
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 99.1111 0 0.222222
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 99.1111 0 0.222222
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DWTL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DWTL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.27273 97.7273 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.27273 97.7273 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.27273 97.7273 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.27273 97.7273 0 0
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
  "f2fs" 26.494 73.506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.494 73.506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.494 73.506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 26.494 73.506 0 0
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
  "f2fs" 25.6972 74.3028 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.6972 74.3028 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.6972 74.3028 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.6972 74.3028 0 0
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
  "f2fs" 25.0497 74.9503 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.0497 74.9503 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.0497 74.9503 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25.0497 74.9503 0 0
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
  "f2fs" 23.6581 76.3419 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.6581 76.3419 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.6581 76.3419 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.6581 76.3419 0 0
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
  "f2fs" 36.4542 63.5458 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 36.4542 63.5458 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 36.4542 63.5458 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 36.4542 63.5458 0 0
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
  "f2fs" 37.6494 62.3506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.6494 62.3506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.6494 62.3506 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.6494 62.3506 0 0
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
  "f2fs" 4.36508 95.6349 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.36508 95.6349 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.36508 95.6349 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.36508 95.6349 0 0
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
  "f2fs" 5.16899 94.831 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.16899 94.831 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.16899 94.831 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.16899 94.831 0 0
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
  "f2fs" 34.4622 65.5378 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.4622 65.5378 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.4622 65.5378 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 34.4622 65.5378 0 0
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
  "f2fs" 32.2709 67.7291 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 32.2709 67.7291 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 32.2709 67.7291 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 32.2709 67.7291 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWCL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWCL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 77.3279 0 20.6478
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 77.3279 0 20.6478
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 77.3279 0 20.6478
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 77.3279 0 20.6478
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWCL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWCL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.81087 77.666 0 20.5231
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.81087 77.666 0 20.5231
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.81087 77.666 0 20.5231
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.81087 77.666 0 20.5231
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWCM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWCM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 66.2698 0 32.5397
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 66.2698 0 32.5397
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 66.2698 0 32.5397
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 66.2698 0 32.5397
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWCM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWCM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60966 64.9899 0 33.4004
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60966 64.9899 0 33.4004
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60966 64.9899 0 33.4004
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60966 64.9899 0 33.4004
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWRL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWRL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWRL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWRL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.332 88.668 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWRM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWRM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.40909 96.5909 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.40909 96.5909 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.40909 96.5909 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.40909 96.5909 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWRM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWRM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.67232 96.3277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.67232 96.3277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.67232 96.3277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 3.67232 96.3277 0 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWUL:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWUL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.96464 45.776 0 52.2593
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.96464 45.776 0 52.2593
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.96464 45.776 0 52.2593
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.96464 45.776 0 52.2593
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWUL:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWUL:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.37624 45.3465 0 52.2772
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.37624 45.3465 0 52.2772
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.37624 45.3465 0 52.2772
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.37624 45.3465 0 52.2772
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWUM:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWUM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.52381 48.9524 0 49.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.52381 48.9524 0 49.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.52381 48.9524 0 49.5238
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.52381 48.9524 0 49.5238
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MWUM:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MWUM:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.71103 45.8175 0 52.4715
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.71103 45.8175 0 52.4715
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.71103 45.8175 0 52.4715
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.71103 45.8175 0 52.4715
e

unset multiplot
set output
