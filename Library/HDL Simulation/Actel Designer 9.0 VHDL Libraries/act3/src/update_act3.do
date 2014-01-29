#  File: update_act3.do
#    Copyright (C) ALDEC Inc.
#  File can be used to update library act3 for Actel
#  To update the library, perform the following steps:
#    1. Update existing library source files
#    2. Execute this macro file

set OPT -O3
#uncomment following line to compile with debug information
#set OPT -dbg

setlibrarymode -rw act3 
clearlibrary
acom -work act3 $OPT $DSN\src\act3.vhd
setlibrarymode -ro act3