#!/bin/sh

seriationct-sample-assemblages-for-samplesize-sequence-seriation.py --inputdirectory sampled-traits --outputdirectory random-sampled-ss-series --sampletype random  --samplefraction 0.15 --debug 0 --smallestsample 5
seriationct-sample-assemblages-for-samplesize-sequence-seriation.py --inputdirectory sampled-traits --outputdirectory spatial-sampled-ss-series --sampletype spatial  --samplefraction 0.15 --debug 0 --smallestsample 5 --spatialquadrats 2 --maxsizespatial 1100 --spatialdata xyfiles/seriationct-27XY.txt
seriationct-sample-assemblages-for-samplesize-sequence-seriation.py --inputdirectory sampled-traits --outputdirectory temporal-sampled-ss-series --sampletype temporal  --samplefraction 0.15 --debug 0 --smallestsample 5 --temporaldata temporal --temporalperiods 3
seriationct-sample-assemblages-for-samplesize-sequence-seriation.py --inputdirectory sampled-traits --outputdirectory spatiotemporal-sampled-ss-series --sampletype spatiotemporal --samplefraction 0.15 --debug 0 --smallestsample 5 --temporaldata temporal --temporalperiods 3 --spatialquadrats 2 --maxsizespatial 1100 --spatialdata xyfiles/seriationct-27XY.txt


