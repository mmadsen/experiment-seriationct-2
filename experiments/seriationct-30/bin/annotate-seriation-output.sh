#!/bin/sh
for d in `find . -name "*minmax-by-weight.png.gml"`; 
	do ( seriationct-annotate-minmax-graph.py --inputfile $d --networkmodel networks/seriationct-30-network-gml.zip --modeltype lineage --experiment seriationct-30); 
done
