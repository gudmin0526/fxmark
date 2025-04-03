#!/bin/bash

bin/plotter.py --ty sc --log $1 --out $2
bin/plotter.py --ty util --log $1 --ncore 1 --out $3
