#!/bin/sh

mkdir -p rawnetworkmodels/seriationct-27-networkmodel

seriationct-build-lineage-splitting-network.py --debug 1 --outputdirectory rawnetworkmodels/seriationct-27-networkmodel --experiment seriationct-27 --intercluster_edgeweight 1.0 --intracluster_edgeweight 10 --nodespercluster 10 --interconnectfraction 0.1  --centroidmin 100 --centroidmax 1000 --clusterspread 10 --numclusters 4 --numlineages 2 --direction coalesce --change_time 3 --slices 6


cp bin/build-networkmodel.sh rawnetworkmodels/seriationct-27-networkmodel
cd rawnetworkmodels
zip -r seriationct-27-network-gml.zip seriationct-27-networkmodel/*.gml
zip -r seriationct-27-full-network.zip seriationct-27-networkmodel
cp seriationct-27-networkmodel/seriationct-27XY.txt ../xyfiles
mv seriationct-27-network-gml.zip ../networks

