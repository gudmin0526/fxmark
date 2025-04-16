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
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 8,3

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
  "f2fs" 0.665188 14.4124 0 84.9224
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.665188 14.4124 0 84.9224
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.665188 14.4124 0 84.9224
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.665188 14.4124 0 84.9224
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
  "f2fs" 0.421053 9.05263 0 90.5263
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.421053 9.05263 0 90.5263
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.421053 9.05263 0 90.5263
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.421053 9.05263 0 90.5263
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
  "f2fs" 7.32673 92.4752 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.32673 92.4752 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.32673 92.4752 0 0.19802
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.32673 92.4752 0 0.19802
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
  "f2fs" 0.849257 9.55414 0 89.5966
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.849257 9.55414 0 89.5966
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.849257 9.55414 0 89.5966
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.849257 9.55414 0 89.5966
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
  "f2fs" 6.54762 93.4524 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.54762 93.4524 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.54762 93.4524 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.54762 93.4524 0 0
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
  "f2fs" 1.27119 9.74576 0 88.9831
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.27119 9.74576 0 88.9831
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.27119 9.74576 0 88.9831
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.27119 9.74576 0 88.9831
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
  "f2fs" 0.858369 9.65665 0 89.485
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.858369 9.65665 0 89.485
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.858369 9.65665 0 89.485
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.858369 9.65665 0 89.485
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
  "f2fs" 0.429185 9.65665 0 89.9142
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.429185 9.65665 0 89.9142
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.429185 9.65665 0 89.9142
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.429185 9.65665 0 89.9142
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
  "f2fs" 1.19048 98.6111 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 98.6111 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 98.6111 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 98.6111 0 0.198413
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
  "f2fs" 1.19048 96.4286 0 2.38095
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 96.4286 0 2.38095
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 96.4286 0 2.38095
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.19048 96.4286 0 2.38095
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
  "f2fs" 1.40562 37.751 0 60.8434
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40562 37.751 0 60.8434
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40562 37.751 0 60.8434
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40562 37.751 0 60.8434
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
  "f2fs" 1.77515 34.5168 0 63.7081
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.77515 34.5168 0 63.7081
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.77515 34.5168 0 63.7081
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.77515 34.5168 0 63.7081
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
  "f2fs" 1.08025 27.9321 0 70.9877
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.08025 27.9321 0 70.9877
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.08025 27.9321 0 70.9877
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.08025 27.9321 0 70.9877
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
  "f2fs" 1.22324 29.8165 0 68.9602
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22324 29.8165 0 68.9602
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22324 29.8165 0 68.9602
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.22324 29.8165 0 68.9602
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
  "f2fs" 9.74155 90.2584 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 9.74155 90.2584 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 9.74155 90.2584 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 9.74155 90.2584 0 0
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
  "f2fs" 5.29801 94.702 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.29801 94.702 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.29801 94.702 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.29801 94.702 0 0
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
  "f2fs" 4.69799 95.302 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.69799 95.302 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.69799 95.302 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.69799 95.302 0 0
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
  "f2fs" 2.35756 54.0275 0 43.4185
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.35756 54.0275 0 43.4185
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.35756 54.0275 0 43.4185
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.35756 54.0275 0 43.4185
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
  "f2fs" 1.72043 53.1183 0 45.1613
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.72043 53.1183 0 45.1613
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.72043 53.1183 0 45.1613
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.72043 53.1183 0 45.1613
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
  "f2fs" 2.57426 52.6733 0 44.7525
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.57426 52.6733 0 44.7525
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.57426 52.6733 0 44.7525
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.57426 52.6733 0 44.7525
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
  "f2fs" 2.25873 51.7454 0 45.9959
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.25873 51.7454 0 45.9959
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.25873 51.7454 0 45.9959
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.25873 51.7454 0 45.9959
e

unset multiplot
set output
