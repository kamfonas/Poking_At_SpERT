#!/usr/bin/bash

LR=(0.00003 0.00005 0.00007) # (0.00006 0.00002) #
WEIGHT_DECAY=(0.020 0.010) # (0.010 0.005 0) #
REL_FILTER_THRESHOLD=(0.40)
PROP_DROP=(0.10 0.20 )
#conda activate nlu
for lr in ${LR[@]} ; do
    for weight_decay in ${WEIGHT_DECAY[@]} ; do
        for rel_filter_threshold in ${REL_FILTER_THRESHOLD[@]} ; do
            for prop_drop in ${PROP_DROP[@]} ; do
                #python spert.py train --config configs/train_bert1.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold $rel_filter_threshold --prop_drop $prop_drop
                #python spert.py train --config configs/train_roberta1.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold $rel_filter_threshold --prop_drop $prop_drop
                #python spert.py train --config configs/train_electra1.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold $rel_filter_threshold --prop_drop $prop_drop 
                #python spert.py train --config configs/train_bert3.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold $rel_filter_threshold --prop_drop $prop_drop
                #python spert.py train --config configs/train_roberta2.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold  $rel_filter_threshold --prop_drop $prop_drop --model_path roberta-base --tokenizer_path roberta-base
                #python spert.py train --config configs/train_roberta2.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold  $rel_filter_threshold --prop_drop $prop_drop --model_path allenai/biomed_roberta_base --tokenizer_path allenai/biomed_roberta_base
                python spert.py train --config configs/train_electra2.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold  $rel_filter_threshold --prop_drop $prop_drop --model_path google/electra-base-discriminator --tokenizer_path google/electra-base-discriminator
                python spert.py train --config configs/train_electra2.conf --lr  $lr --weight_decay $weight_decay --rel_filter_threshold  $rel_filter_threshold --prop_drop $prop_drop --model_path kamalkraj/bioelectra-base-discriminator-pubmed --tokenizer_path kamalkraj/bioelectra-base-discriminator-pubmed
            done 
        done 
    done 
done