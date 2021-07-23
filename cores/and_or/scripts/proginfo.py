# https://github.com/fusesoc/blinky/blob/c1c2636c172f471718bfc78cba9e4c8076ac96df/sw/proginfo.py

import os
import sys

system_name = "ethan_tests_and_or_1.0.0"
print("")
print("Build was completed")
print("")
print("To program the board run:")
if sys.argv[1] == 'tinyprog':
    print("tinyprog --program {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'iceprog':
    print("iceprog {}".format(os.path.join(os.getcwd(), system_name+".bin")))
elif sys.argv[1] == 'ujprog':
    print("ujprog {}".format(os.path.join(os.getcwd(), "Implementation0", system_name+"_Implementation0.bit")))
    print("Other programming options are listed here https://github.com/emard/ulx3s/blob/master/doc/MANUAL.md#programming-options")
elif sys.argv[1] == 'dfu-util':
    print("dfu-util -d 1209:5af0 -D {}".format(os.path.join(os.getcwd(), system_name+".bit")))
elif sys.argv[1] == 'dfu-util-fomu':
    print("Download and install dfu-util from http://dfu-util.sourceforge.net/")
    print("dfu-util -e -d 1209:5bf0 -D {}".format(os.path.join(os.getcwd(), system_name+".bin")))
