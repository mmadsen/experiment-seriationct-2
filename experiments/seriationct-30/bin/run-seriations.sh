#!/bin/sh
run-idss-batch.py --inputdirectory random-sampled-data --outputdirectory random-sampled-seriation-results --xyfile xyfiles/seriationct-30XY.txt --dryrun 0
run-idss-batch.py --inputdirectory temporal-strat-sampled-data --outputdirectory temporal-strat-seriation-results --xyfile xyfiles/seriationct-30XY.txt --dryrun 0
run-idss-batch.py --inputdirectory spatial-sampled-data --outputdirectory spatial-strat-seriation-results --xyfile xyfiles/seriationct-30XY.txt --dryrun 0
run-idss-batch.py --inputdirectory spatiotemporal-sampled-data --outputdirectory spatiotemporal-strat-seriation-results --xyfile xyfiles/seriationct-30XY.txt --dryrun 0

#curl --data "seriations completed for experiment seriationct-30 " https://historicalscience.slack.com/services/hooks/slackbot?token=FIylr5RSautCrlYMUhK2gSDX&channel=%23saa2015-evo-session

