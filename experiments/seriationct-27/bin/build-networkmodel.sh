#!/bin/sh

mkdir -p rawnetworkmodels/seriationct-27-networkmodel

seriationct-build-clustered-network.py --experiment seriationct-27 --outputdirectory rawnetworkmodels/seriationct-27-networkmodel --numclusters 3 --slices 5 --nodespercluster 10 --interconnectfraction 0.2 --centroidmin 100 --centroidmax 1000 --clusterspread 10 --intercluster_edgeweight 1 --intracluster_edgeweight 100 --debug 1

cp bin/build-networkmodel.sh rawnetworkmodels/seriationct-27-networkmodel
cd rawnetworkmodels
zip -r seriationct-27-network-gml.zip seriationct-27-networkmodel/*.gml
zip -r seriationct-27-full-network.zip seriationct-27-networkmodel
cp seriationct-27-networkmodel/seriationct-27XY.txt ../xyfiles
mv seriationct-27-network-gml.zip ../networks

