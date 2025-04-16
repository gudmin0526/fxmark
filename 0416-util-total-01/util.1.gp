# LOG_FILE = logs/2025-04-16-total/fxmark.log
# SYSTEM = Linux fvm 5.15.0+ #4 SMP Tue Apr 8 14:16:18 UTC 2025 x86_64 x86_64 x86_64 GNU/Linux
# DISK_SIZE = 12G
# DURATION = 5s
# DIRECTIO = bufferedio,directio
# MEDIA_TYPES = ssd,hdd,nvme,mem
# FS_TYPES = tmpfs,ext4,ext4_no_jnl,xfs,btrfs,f2fs
# BENCH_TYPES = DWAL,DWOL,DWOM,DWSL,MWRL,MWRM,MWCL,MWCM,MWUM,MWUL,DWTL,filebench_varmail,filebench_oltp,filebench_fileserver,dbench_client,MRPL,MRPM,MRPH,MRDM,MRDL,DRBH,DRBM,DRBL,MRPM_bg,DRBM_bg,MRDM_bg,DRBH_bg,DRBL_bg,MRDL_bg
# NCORES = 1,2,4
# CORE_SEQ = 0,1,2,3
# MODEL_NAME = AMD Ryzen 5 5600 6-Core Processor
# PHYSICAL_CHIPS = 1
# CORE_PER_CHIP = 4
# SMT_LEVEL = 1
# NUM_TEST_CONF = 174

set term pdfcairo size 6.8999999999999995in,39.099999999999994in font ',10'
set_out='set output "`if test -z $OUT; then echo util.1.pdf; else echo $OUT; fi`"'
eval set_out
set multiplot layout 17,3

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
  "f2fs" 12.3016 87.6984 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3016 87.6984 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3016 87.6984 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3016 87.6984 0 0
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
  "f2fs" 1.20192 28.8462 0 69.9519
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.20192 28.8462 0 69.9519
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.20192 28.8462 0 69.9519
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.20192 28.8462 0 69.9519
e

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
  "f2fs" 7.34127 92.3611 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.34127 92.3611 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.34127 92.3611 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.34127 92.3611 0.297619 0
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
  "f2fs" 7.15706 92.5447 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.15706 92.5447 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.15706 92.5447 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 7.15706 92.5447 0.198807 0.0994036
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
  "f2fs" 8.76494 91.2351 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.76494 91.2351 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.76494 91.2351 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 8.76494 91.2351 0 0
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
  "f2fs" 0.488998 22.7384 0 76.7726
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.488998 22.7384 0 76.7726
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.488998 22.7384 0 76.7726
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.488998 22.7384 0 76.7726
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
  "f2fs" 10.5159 89.1865 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5159 89.1865 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5159 89.1865 0.297619 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.5159 89.1865 0.297619 0
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
  "f2fs" 0.606061 24.8485 0.363636 74.1818
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.606061 24.8485 0.363636 74.1818
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.606061 24.8485 0.363636 74.1818
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.606061 24.8485 0.363636 74.1818
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
  "f2fs" 0.963855 24.3373 0 74.6988
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.963855 24.3373 0 74.6988
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.963855 24.3373 0 74.6988
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.963855 24.3373 0 74.6988
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
  "f2fs" 10.2386 89.4632 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.2386 89.4632 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.2386 89.4632 0.198807 0.0994036
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 10.2386 89.4632 0.198807 0.0994036
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
  "f2fs" 11.4314 88.3698 0.198807 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.4314 88.3698 0.198807 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.4314 88.3698 0.198807 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.4314 88.3698 0.198807 0
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
  "f2fs" 0.666667 10.2222 0 89.1111
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 10.2222 0 89.1111
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 10.2222 0 89.1111
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.666667 10.2222 0 89.1111
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
  "f2fs" 0.840336 9.45378 0 89.7059
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.840336 9.45378 0 89.7059
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.840336 9.45378 0 89.7059
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.840336 9.45378 0 89.7059
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
  "f2fs" 6.74603 93.254 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.74603 93.254 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.74603 93.254 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.74603 93.254 0 0
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
  "f2fs" 0.630252 10.084 0 89.2857
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.630252 10.084 0 89.2857
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.630252 10.084 0 89.2857
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.630252 10.084 0 89.2857
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
  "f2fs" 1.0661 8.52878 0 90.4051
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.0661 8.52878 0 90.4051
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.0661 8.52878 0 90.4051
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.0661 8.52878 0 90.4051
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
  "f2fs" 0.628931 11.5304 0 87.8407
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 11.5304 0 87.8407
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 11.5304 0 87.8407
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.628931 11.5304 0 87.8407
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
  "f2fs" 1.06157 9.12951 0 89.8089
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06157 9.12951 0 89.8089
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06157 9.12951 0 89.8089
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06157 9.12951 0 89.8089
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
  "f2fs" 0.994036 96.6203 0 2.38569
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.994036 96.6203 0 2.38569
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.994036 96.6203 0 2.38569
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.994036 96.6203 0 2.38569
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
  "f2fs" 22.7723 77.2277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7723 77.2277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7723 77.2277 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7723 77.2277 0 0
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
  "f2fs" 24.4533 75.5467 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 24.4533 75.5467 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 24.4533 75.5467 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 24.4533 75.5467 0 0
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
  "f2fs" 1.92308 32.6923 43.6966 21.688
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 32.6923 43.6966 21.688
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 32.6923 43.6966 21.688
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 32.6923 43.6966 21.688
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
  "f2fs" 1.06838 32.7991 43.6966 22.4359
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06838 32.7991 43.6966 22.4359
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06838 32.7991 43.6966 22.4359
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.06838 32.7991 43.6966 22.4359
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
  "f2fs" 25 75 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25 75 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25 75 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 25 75 0 0
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
  "f2fs" 23.8095 76.1905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.8095 76.1905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.8095 76.1905 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.8095 76.1905 0 0
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
  "f2fs" 1.51976 28.1662 44.7822 25.5319
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51976 28.1662 44.7822 25.5319
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51976 28.1662 44.7822 25.5319
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.51976 28.1662 44.7822 25.5319
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
  "f2fs" 1.59915 34.3284 43.4968 20.5757
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.59915 34.3284 43.4968 20.5757
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.59915 34.3284 43.4968 20.5757
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.59915 34.3284 43.4968 20.5757
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
  "f2fs" 35.7143 64.0873 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.0873 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.0873 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.7143 64.0873 0 0.198413
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
  "f2fs" 37.8968 62.1032 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.8968 62.1032 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.8968 62.1032 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 37.8968 62.1032 0 0
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
  "f2fs" 4.7619 95.2381 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.7619 95.2381 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.7619 95.2381 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 4.7619 95.2381 0 0
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
  "f2fs" 35.5159 64.4841 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.5159 64.4841 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.5159 64.4841 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 35.5159 64.4841 0 0
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
  "f2fs" 39.165 60.835 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.165 60.835 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.165 60.835 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 39.165 60.835 0 0
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
  "f2fs" 23.0387 75.4717 0.19861 0.794439
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.0387 75.4717 0.19861 0.794439
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.0387 75.4717 0.19861 0.794439
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 23.0387 75.4717 0.19861 0.794439
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
  "f2fs" 22.7634 76.2425 0.298211 0.198807
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7634 76.2425 0.298211 0.198807
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7634 76.2425 0.298211 0.198807
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 22.7634 76.2425 0.298211 0.198807
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
  "f2fs" 0.998004 34.1317 0 64.8703
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.998004 34.1317 0 64.8703
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.998004 34.1317 0 64.8703
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.998004 34.1317 0 64.8703
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
  "f2fs" 1.39442 33.6653 0 64.9402
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.39442 33.6653 0 64.9402
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.39442 33.6653 0 64.9402
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.39442 33.6653 0 64.9402
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
  "f2fs" 0.676819 27.242 0 72.0812
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.676819 27.242 0 72.0812
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.676819 27.242 0 72.0812
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.676819 27.242 0 72.0812
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
  "f2fs" 0.692042 25.4325 0 73.8754
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.692042 25.4325 0 73.8754
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.692042 25.4325 0 73.8754
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 0.692042 25.4325 0 73.8754
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
  "f2fs" 11.3095 88.4921 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.4921 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.4921 0 0.198413
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 11.3095 88.4921 0 0.198413
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
  "f2fs" 12.3506 87.6494 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3506 87.6494 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3506 87.6494 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 12.3506 87.6494 0 0
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
  "f2fs" 6.47482 93.5252 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.47482 93.5252 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.47482 93.5252 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 6.47482 93.5252 0 0
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
  "f2fs" 5.83942 94.1606 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.83942 94.1606 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.83942 94.1606 0 0
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 5.83942 94.1606 0 0
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
  "f2fs" 1.84805 52.9774 0 45.1745
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.84805 52.9774 0 45.1745
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.84805 52.9774 0 45.1745
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.84805 52.9774 0 45.1745
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
  "f2fs" 1.75055 50.7659 0 47.4836
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.75055 50.7659 0 47.4836
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.75055 50.7659 0 47.4836
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.75055 50.7659 0 47.4836
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
  "f2fs" 1.92308 41.6667 0 56.4103
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 41.6667 0 56.4103
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 41.6667 0 56.4103
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 1.92308 41.6667 0 56.4103
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
  "f2fs" 2.0595 46.9108 0 51.0297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.0595 46.9108 0 51.0297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.0595 46.9108 0 51.0297
e
  # ['user.util', 'sys.util', 'idle.util', 'iowait.util']
  "f2fs" 2.0595 46.9108 0 51.0297
e

unset multiplot
set output
