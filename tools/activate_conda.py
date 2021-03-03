#!/usr/bin/env python3
import subprocess as sp
import os, re

CONDA_PREFIX = "/root/conda"
CONDA_ENV = "lab"

envvars = sp.check_output('''
    eval "$({}/bin/conda shell.bash hook)";
    conda activate {};
    export'''.format(CONDA_PREFIX, CONDA_ENV),
    shell=True, executable='/bin/bash')

for line in envvars.decode().splitlines():
  namevalue = line.split(None, 2)[-1]
  name, value = namevalue.split('=', 1)
  os.environ[name] = value[1:-1]

# Prioritize some commands from Colab
os.environ['PATH'] = (os.environ['HOME'] + '/.bin.priority:' +
                      os.environ['PATH'])

print("Activated conda environment `{}'!".format(CONDA_ENV))
