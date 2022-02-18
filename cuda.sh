#!/bin/bash
sudo rm /etc/apt/sources.list.d/cuda* -y
sudo apt remove --autoremove nvidia-cuda-toolkit -y
sudo apt remove --autoremove nvidia-* -y
sudo apt update -y
sudo add-apt-repository ppa:graphics-drivers -y
sudo apt-key adv --fetch-keys  http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub -y
sudo bash -c 'echo "deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda.list' -y
sudo bash -c 'echo "deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64 /" > /etc/apt/sources.list.d/cuda_learn.list' -y
sudo apt update -y
sudo apt install cuda-10-0 -y
sudo apt install cuda-10-1 -y
sudo apt install cuda-10-2 -y
sudo apt install libcudnn7 -y
#set path of cuda10.0
if [ -d "/usr/local/cuda-10.0/bin/" ]; then
#    echo 'CUDA Version 10.0' > usr/local/cuda-10.0/version.txt
    export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
#set path of cuda10.1
if [ -d "/usr/local/cuda-10.1/bin/" ]; then
#    echo 'CUDA Version 10.1' > usr/local/cuda-10.1/version.txt
    export PATH=/usr/local/cuda-10.1/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
#set path of cuda10.2
if [ -d "/usr/local/cuda-10.2/bin/" ]; then
#    echo 'CUDA Version 10.2' > usr/local/cuda-10.2/version.txt
    export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}
    export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi
