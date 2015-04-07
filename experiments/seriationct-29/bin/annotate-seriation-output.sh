#!/bin/sh
for d in `find . -name "*minmax-by-weight.png.gml"`; 
	do ( seriationct-annotate-minmax-graph.py --inputfile $d --networkmodel networks/seriationct-29-network-gml.zip --modeltype lineage --experiment seriationct-29); 
done
