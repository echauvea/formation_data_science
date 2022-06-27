#!/bin/bash

source /etc/bash.bashrc

tensorboard --logdir /workspace/logs --bind_all &

jupyter notebook --notebook-dir=/workspace --ip 0.0.0.0 --no-browser --allow-root
