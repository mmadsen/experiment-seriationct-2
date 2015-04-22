#!/bin/sh
run-idss-batch.py --inputdirectory random-sampled-ss-series --outputdirectory random-sampled-ss-series-results --xyfile xyfiles/seriationct-27XY.txt --dryrun 0
run-idss-batch.py --inputdirectory temporal-sampled-ss-series --outputdirectory temporal-sampled-ss-series-results --xyfile xyfiles/seriationct-27XY.txt --dryrun 0
run-idss-batch.py --inputdirectory spatial-sampled-ss-series --outputdirectory spatial-sampled-ss-series-results --xyfile xyfiles/seriationct-27XY.txt --dryrun 0
run-idss-batch.py --inputdirectory spatiotemporal-sampled-ss-series --outputdirectory spatiotemporal-sampled-ss-series-results --xyfile xyfiles/seriationct-27XY.txt --dryrun 0

