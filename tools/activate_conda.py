#!/usr/bin/env python3
import subprocess as sp
import os, re

CONDA_ENV = "lab"

envvars = sp.check_output('''
    eval "$(conda shell.bash hook)";
    conda activate {};
    export'''.format(CONDA_ENV),
    shell=True, executable='/bin/bash')

for line in envvars.decode().splitlines():
  namevalue = line.split(None, 2)[-1]
  name, value = namevalue.split('=', 1)
  os.environ[name] = value[1:-1]

print("Activated conda environment `{}'!".format(CONDA_ENV))
