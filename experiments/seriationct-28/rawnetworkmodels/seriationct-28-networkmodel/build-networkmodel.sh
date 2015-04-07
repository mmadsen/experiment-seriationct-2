#!/bin/sh

mkdir -p rawnetworkmodels/seriationct-28-networkmodel

seriationct-build-lineage-splitting-network.py --debug 1 --outputdirectory rawnetworkmodels/seriationct-28-networkmodel --experiment seriationct-28 --intercluster_edgeweight 1.0 --intracluster_edgeweight 10 --nodespercluster 10 --interconnectfraction 0.1  --centroidmin 100 --centroidmax 1000 --clusterspread 10 --numclusters 4 --numlineages 2 --direction split --change_time 3 --slices 8 


cp bin/build-networkmodel.sh rawnetworkmodels/seriationct-28-networkmodel
cd rawnetworkmodels
zip -r seriationct-28-network-gml.zip seriationct-28-networkmodel/*.gml
zip -r seriationct-28-full-network.zip seriationct-28-networkmodel
cp seriationct-28-networkmodel/seriationct-28XY.txt ../xyfiles
mv seriationct-28-network-gml.zip ../networks

