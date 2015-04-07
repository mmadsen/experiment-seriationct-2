#!/bin/sh

mkdir -p rawnetworkmodels/seriationct-30-networkmodel

seriationct-build-clustered-network.py --experiment seriationct-30 --outputdirectory rawnetworkmodels/seriationct-30-networkmodel --numclusters 3 --slices 5 --nodespercluster 10 --interconnectfraction 0.2 --centroidmin 100 --centroidmax 1000 --clusterspread 10 --intercluster_edgeweight 1 --intracluster_edgeweight 100 --debug 1

cp bin/build-networkmodel.sh rawnetworkmodels/seriationct-30-networkmodel
cd rawnetworkmodels
zip -r seriationct-30-network-gml.zip seriationct-30-networkmodel/*.gml
zip -r seriationct-30-full-network.zip seriationct-30-networkmodel
cp seriationct-30-networkmodel/seriationct-30XY.txt ../xyfiles
mv seriationct-30-network-gml.zip ../networks

