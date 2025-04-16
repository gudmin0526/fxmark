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
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 4,3

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBH_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBH_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.56219 92.2388 0.199005 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.56219 92.2388 0.199005 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.56219 92.2388 0.199005 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.56219 92.2388 0.199005 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBH_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBH_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.12871 92.4752 0.39604 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.12871 92.4752 0.39604 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.12871 92.4752 0.39604 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.12871 92.4752 0.39604 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBL_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBL_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3383 87.2637 0.298507 0.0995025
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3383 87.2637 0.298507 0.0995025
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3383 87.2637 0.298507 0.0995025
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3383 87.2637 0.298507 0.0995025
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBL_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBL_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.991326 32.0942 0.495663 66.2949
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.991326 32.0942 0.495663 66.2949
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.991326 32.0942 0.495663 66.2949
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.991326 32.0942 0.495663 66.2949
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBM_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5368 89.165 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5368 89.165 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5368 89.165 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5368 89.165 0.198807 0.0994036
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:DRBM_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:DRBM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.5538 88.1474 0.298805 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.5538 88.1474 0.298805 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.5538 88.1474 0.298805 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.5538 88.1474 0.298805 0
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDL_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDL_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60428 34.2246 43.4225 20.7487
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60428 34.2246 43.4225 20.7487
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60428 34.2246 43.4225 20.7487
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.60428 34.2246 43.4225 20.7487
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDL_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDL_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.76899 35.5879 43.4964 19.1467
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.76899 35.5879 43.4964 19.1467
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.76899 35.5879 43.4964 19.1467
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.76899 35.5879 43.4964 19.1467
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDM_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51188 30.8855 46.0043 21.5983
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51188 30.8855 46.0043 21.5983
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51188 30.8855 46.0043 21.5983
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51188 30.8855 46.0043 21.5983
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRDM_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRDM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.97368 31.6886 44.7368 21.4912
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.97368 31.6886 44.7368 21.4912
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.97368 31.6886 44.7368 21.4912
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.97368 31.6886 44.7368 21.4912
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPM_bg:*:1:bufferedio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.2604 75.4473 0.298211 0.795229
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.2604 75.4473 0.298211 0.795229
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.2604 75.4473 0.298211 0.795229
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.2604 75.4473 0.298211 0.795229
e

set grid y
set style data histograms
set style histogram rowstacked
set boxwidth 0.5
set style fill solid 1.0 border -1
set ytics 10

set title 'nvme:MRPM_bg:*:1:directio'
set xlabel ''
set ylabel 'CPU utilization'
set yrange [0:100]
set xtics rotate by -45
set key out horiz
set key center top

# nvme:*:MRPM_bg:1
plot '-' using 2:xtic(1) title 'user', '' using 3 title 'sys', '' using 4 title 'idle', '' using 5 title 'iowait'
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 20.5005 76.8046 1.82868 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 20.5005 76.8046 1.82868 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 20.5005 76.8046 1.82868 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 20.5005 76.8046 1.82868 0
e

unset multiplot
set output
