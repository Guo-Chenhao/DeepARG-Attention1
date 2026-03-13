# DeepARG-Attention1
Official PyTorch implementation of the DeepARG-Attention model for metagenomic antibiotic resistance gene identification.
# DeepARG-Attention: Metagenomic Antibiotic Resistance Gene Identification

[![Python 3.9](https://img.shields.io/badge/python-3.9-blue.svg)](https://www.python.org/downloads/release/python-390/)
[![PyTorch 2.0](https://img.shields.io/badge/PyTorch-2.0.1-EE4C2C.svg)](https://pytorch.org/)

This repository contains the official implementation of **DeepARG-Attention** from the graduation thesis. It addresses the challenges of fragmented sequences and remote homology in metagenomic sequences by combining 1D-ResNet and Self-Attention mechanisms.

## 🛠 Experimental Environment (Reproducibility)
To ensure 100% reproducibility of the results reported in the thesis, we provide the exact environment specs (as detailed in **Appendix B** of the paper):
- **Hardware**: NVIDIA Tesla V100 (32GB), Intel Xeon E5-2686 v4 
- **OS**: Ubuntu 20.04.5 LTS
- **Core Dependencies**: PyTorch 2.0.1+cu117, Biopython 1.81, CD-HIT v4.8.1

## 🚀 Quick Start (Dockerized)

We highly recommend using our provided Docker container to avoid version conflicts.

### 1. Build and Run the Environment
```bash
git clone https://github.com/Guo-CHenhao/DeepARG-Attention.git
cd DeepARG-Attention
docker build -t deeparg_attention_env:v1 .
docker run --gpus all -it --rm -v $(pwd):/workspace/DeepARG-Attention deeparg_attention_env:v1
2. Data Preprocessing
Reproduce the CARD v3.2.7 redundancy removal step (Threshold: 95%):

bash data_preprocess.sh
3. Training & Evaluation
Run the following script to reproduce the baseline comparisons and attention evaluations:

python train_reproduce.py
📜 Hyperparameters Configuration
All training states align perfectly with the manuscript:

Batch Size: 64
Optimizer: AdamW (lr=1e-3, weight_decay=1e-4)
Objective: Focal Loss (γ=2.0)
Epochs: 100 (Early Stopping patience=10)
✉️ Contact
For any questions regarding the code or the paper, please open an issue or contact the author.
