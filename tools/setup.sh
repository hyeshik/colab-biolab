#!/bin/bash
CONDA_PREFIX=/root/conda

# Copy overlay files
tar -C overlay -cf - . | tar -C / -xvf -

# Download and install miniconda
CONDAINSTALLER=miniconda3.sh

if [ ! -f $CONDAINSTALLER ]; then
    wget -O $CONDAINSTALLER \
        https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
fi
bash $CONDAINSTALLER -b -f -p $CONDA_PREFIX


# Activate our .bashrc
if ! grep DEFAULT_CONDA $HOME/.bashrc >/dev/null 2>&1; then
  cat $HOME/.bashrc.biolab >> $HOME/.bashrc
fi

# vim: sts=4 et sw=4
