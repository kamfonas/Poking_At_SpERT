#!/usr/bin/bash

LR=(0.000005 0.00001 0.00005 0.0001 0.0005 )
WEIGHT_DECAY=(0.1 0.05 0.01 0.005 0)
REL_FILTER_THRESHOLD=(0.4 0.5)
PROP_DROP=(0.0 0.1 0.2 )
#conda activate nlu
for lr in ${LR[@]} ; do
    for weight_decay in ${WEIGHT_DECAY[@]} ; do
        for rel_filter_threshold in ${REL_FILTER_THRESHOLD[@]} ; do
            for prop_drop in ${PROP_DROP[@]} ; do
                python spert.py train --config configs/train_bert1.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold $rel_filter_threshold --prop_drop $prop_drop
            done 
        done 
    done 
done