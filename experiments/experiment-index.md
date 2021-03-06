# SeriationCT Experiment Index #
 
# seriationct-26 #

Composed of:

* split model with 2 separate lineages, 2 clusters each, splitting in slice 3 from a single 4 cluster lineage
* edge weights 1.0 inter cluster 10 intracluster
* 10 nodes per cluster
* 0.1 density of intercluster edges 
* "theta_low": 0.00005,
* "theta_high": 0.0001,
* "migrationfraction_low" : 0.05,
* "migrationfraction_high" : 0.1,

Mirror image of seriationct-27 with sampling types:

* 0.1 fraction of assemblages
* 0.1 fraction of temporally stratified sample, early/middle/late strata
* 0.1 fraction of spatially stratified sample, 2x2 quadrats dividing whole space
* 0.1 fracton of spatiotemporally stratified sample, 2x2 quadrats and E/M/L temporal periods

# seriationct-27 #

Composed of:

* coalescence model with 2 separate lineages, 2 clusters each, coalescing in slice 3 to a single 4 cluster lineage
* edge weights 1.0 inter cluster 10 intracluster
* 10 nodes per cluster
* 0.1 density of intercluster edges 
* "theta_low": 0.00005,
* "theta_high": 0.0001,
* "migrationfraction_low" : 0.05,
* "migrationfraction_high" : 0.1,

Mirror image of seriationct-26 with sampling types:

* 0.1 fraction of assemblages
* 0.1 fraction of temporally stratified sample, early/middle/late strata
* 0.1 fraction of spatially stratified sample, 2x2 quadrats dividing whole space
* 0.1 fracton of spatiotemporally stratified sample, 2x2 quadrats and E/M/L temporal periods

# seriationct-28 #

Composed of:

* 15 slices in the same 10K steps, to see if having shorter durations and then sampling the assemblages changes our ability to detect structure
* Hierarchy with 4 children per level
* Root node which can change over time, with 0.2 prob per slice
* Very weak links between nodes, except for strong links between lowest level (gchild) nodes
* Low innovation rate prior distribution (theta = 0.0005 to 0.001)
* Low migration fraction prior distribution (migr = 0.005 to 0.01)


# seriationct-29 #

Composed of:

* 15 slices in the same 10K steps, to see if having shorter durations and then sampling the assemblages changes our ability to detect structure
* Hierarchy with 4 children per level
* Root node which can change over time, with 0.2 prob per slice
* Very weak links between nodes, except for strong links between lowest level (gchild) nodes
* Low innovation rate prior distribution (theta = 0.0005 to 0.001)
* Low migration fraction prior distribution (migr = 0.005 to 0.01)


# seriationct-30 #

Composed of:

* 15 slices in the same 10K steps, to see if having shorter durations and then sampling the assemblages changes our ability to detect structure
* Hierarchy with 4 children per level
* Root node which can change over time, with 0.2 prob per slice
* Very weak links between nodes, except for strong links between lowest level (gchild) nodes
* Low innovation rate prior distribution (theta = 0.0005 to 0.001)
* Low migration fraction prior distribution (migr = 0.005 to 0.01)


