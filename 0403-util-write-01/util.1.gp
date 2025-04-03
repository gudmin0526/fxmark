# LOG_FILE = fxmark/logs/2025-04-03-write-01/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #1 SMP Fri Mar 14 12:51:39 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 32G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,DWTL,filebench_varmail,filebench_oltp,filebench_fileserver,dbench_client
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 90

set term pdfcairo size 6.8999999999999995in,9.2in font ',10'
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 4,3

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
  "f2fs" 1.4881 58.9286 0 39.5833
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.4881 58.9286 0 39.5833
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.4881 58.9286 0 39.5833
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.4881 58.9286 0 39.5833
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
  "f2fs" 0.628931 5.66038 0 93.7107
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 5.66038 0 93.7107
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 5.66038 0 93.7107
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 5.66038 0 93.7107
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
  "f2fs" 4.98008 95.0199 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.98008 95.0199 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.98008 95.0199 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.98008 95.0199 0 0
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
  "f2fs" 0.41841 4.81172 0 94.7699
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.41841 4.81172 0 94.7699
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.41841 4.81172 0 94.7699
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.41841 4.81172 0 94.7699
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
  "f2fs" 0.619835 6.40496 0 92.9752
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.40496 0 92.9752
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.40496 0 92.9752
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.619835 6.40496 0 92.9752
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
  "f2fs" 0.823045 7.61317 0 91.5638
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.823045 7.61317 0 91.5638
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.823045 7.61317 0 91.5638
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.823045 7.61317 0 91.5638
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
  "f2fs" 0.414938 6.639 0 92.9461
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414938 6.639 0 92.9461
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414938 6.639 0 92.9461
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.414938 6.639 0 92.9461
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
  "f2fs" 1.78571 97.9911 0 0.223214
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.78571 97.9911 0 0.223214
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.78571 97.9911 0 0.223214
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.78571 97.9911 0 0.223214
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
  "f2fs" 2.20588 97.4265 0 0.367647
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20588 97.4265 0 0.367647
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20588 97.4265 0 0.367647
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.20588 97.4265 0 0.367647
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
  "f2fs" 2.21328 76.8612 0 20.9256
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.21328 76.8612 0 20.9256
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.21328 76.8612 0 20.9256
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.21328 76.8612 0 20.9256
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
  "f2fs" 1.6129 77.0161 0 21.371
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.6129 77.0161 0 21.371
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.6129 77.0161 0 21.371
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.6129 77.0161 0 21.371
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
  "f2fs" 2.42915 64.9798 0 32.5911
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.42915 64.9798 0 32.5911
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.42915 64.9798 0 32.5911
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.42915 64.9798 0 32.5911
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
  "f2fs" 1.40845 65.996 0 32.5956
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40845 65.996 0 32.5956
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40845 65.996 0 32.5956
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.40845 65.996 0 32.5956
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
  "f2fs" 11.753 88.247 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.753 88.247 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.753 88.247 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.753 88.247 0 0
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
  "f2fs" 4 96 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4 96 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4 96 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4 96 0 0
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
  "f2fs" 4.1543 95.8457 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.1543 95.8457 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.1543 95.8457 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.1543 95.8457 0 0
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
  "f2fs" 1.34615 46.5385 0 52.1154
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.34615 46.5385 0 52.1154
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.34615 46.5385 0 52.1154
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.34615 46.5385 0 52.1154
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
  "f2fs" 1.43443 42.623 0 55.9426
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.43443 42.623 0 55.9426
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.43443 42.623 0 55.9426
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.43443 42.623 0 55.9426
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
  "f2fs" 1.1811 47.6378 0 51.1811
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.1811 47.6378 0 51.1811
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.1811 47.6378 0 51.1811
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.1811 47.6378 0 51.1811
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
  "f2fs" 2.02429 44.1296 0 53.8462
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 44.1296 0 53.8462
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 44.1296 0 53.8462
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.02429 44.1296 0 53.8462
e

unset multiplot
set output
