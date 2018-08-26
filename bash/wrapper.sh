#!/bin/sh

module load slurm

# Change DIR below as needed. 

DIR=/groups/engstromgrp/eddie/Sri_Lanka_rgb_subs_2

cd $DIR
for NAME in `ls -1 ${: wrapper.sh 

DIR}/*tif`
do

sbatch submit.sh $DIR $NAME


done

