#!/usr/bin/python3

# 2020
# The DDOS Toolkit was programmed and developed by aryazakaria01.
# The DDOS Toolkit is published under the MIT Licence.
# The DDOS Toolkit is based on the CLIF-Framework.
# The CLIF-Framework is programmed and developed by aryazakaria01.
# The CLIF-Framework is published under the MIT Licence.

# This script is a shortcut for everyone who does not want to install DDOS to the bin path.

from importlib import import_module
from sys import path

path.insert(1, "./DDOS/")
main = import_module("DDOS.main")

main.run()
