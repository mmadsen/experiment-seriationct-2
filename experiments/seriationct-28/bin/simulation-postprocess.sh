#!/bin/sh
seriationct-export-data.py --experiment seriationct-28 --outputdirectory exported-data
seriationct-assemblage-duration-export.py --experiment seriationct-28 --outputdirectory temporal
seriationct-sample-exported-datafiles.py --inputdirectory exported-data --outputdirectory sampled-traits --samplesize 500 --debug 1 --dropthreshold 0.01
seriationct-sample-assemblages-for-seriation.py --inputdirectory sampled-traits --outputdirectory random-sampled-data --sampletype random --numsamples 4 --samplefraction 0.04 --debug 0
seriationct-sample-assemblages-for-seriation.py --inputdirectory sampled-traits --outputdirectory temporal-strat-sampled-data --sampletype temporal --temporaldata temporal --temporalperiods 3 --numsamples 4 --samplefraction 0.04 --debug 0
seriationct-sample-assemblages-for-seriation.py --inputdirectory sampled-traits --outputdirectory spatial-sampled-data --sampletype spatial --numsamples 5 --samplefraction 0.04 --spatialquadrats 2 --maxsizespatial 1100 --debug 0 --spatialdata xyfiles/seriationct-28XY.txt
seriationct-sample-assemblages-for-seriation.py --inputdirectory sampled-traits --outputdirectory spatiotemporal-sampled-data --sampletype spatiotemporal --numsamples 5 --samplefraction 0.04 --spatialquadrats 2 --maxsizespatial 1100 --debug 0 --spatialdata xyfiles/seriationct-28XY.txt --temporalperiods 3 --temporaldata temporal


# compress the exported data since we've sampled it, and with high innovation rates 
# the exported raw data can be BIG
cd exported-data
for d in `ls *.txt`; 
do
  gzip -9 $d
done
cd ..

