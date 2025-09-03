#!/bin/bash

SC_OUT="$2-sc-$3"
UTIL_OUT="$2-util-$3"

bin/plotter.py --ty sc --log $1 --out "$SC_OUT"
bin/plotter.py --ty util --log $1 --ncore 1 --out "$UTIL_OUT"
