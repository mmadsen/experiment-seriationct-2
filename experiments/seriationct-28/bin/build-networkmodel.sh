#!/bin/sh

mkdir -p rawnetworkmodels/seriationct-28-networkmodel

seriationct-build-clustered-network.py --experiment seriationct-28 --outputdirectory rawnetworkmodels/seriationct-28-networkmodel --numclusters 3 --slices 5 --nodespercluster 10 --interconnectfraction 0.2 --centroidmin 100 --centroidmax 1000 --clusterspread 10 --intercluster_edgeweight 1 --intracluster_edgeweight 100 --debug 1

cp bin/build-networkmodel.sh rawnetworkmodels/seriationct-28-networkmodel
cd rawnetworkmodels
zip -r seriationct-28-network-gml.zip seriationct-28-networkmodel/*.gml
zip -r seriationct-28-full-network.zip seriationct-28-networkmodel
cp seriationct-28-networkmodel/seriationct-28XY.txt ../xyfiles
mv seriationct-28-network-gml.zip ../networks

