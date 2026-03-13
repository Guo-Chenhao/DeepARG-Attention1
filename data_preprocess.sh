#!/bin/bash
# Description: Data preprocessing script utilizing CD-HIT for redundancy removal
# Dataset: CARD v3.2.7 (2023-09-01) 

echo "[INFO] Commencing redundancy sequence removal using CD-HIT v4.8.1..."

# 1. 论文原文描述的超参：相似度阈值 0.95 (95%)，word size = 5
INPUT_FASTA="raw_data/CARD_v3.2.7_ARG.fasta"
OUTPUT_FASTA="processed_data/CARD_non_redundant.fasta"

mkdir -p processed_data

# 执行清洗（直接对齐论文参数说明）
cd-hit-est -i $INPUT_FASTA \
           -o $OUTPUT_FASTA \
           -c 0.95 \
           -n 5 \
           -M 32000 \
           -T 40 

echo "[INFO] Data processing completed. Output saved at: ${OUTPUT_FASTA}"