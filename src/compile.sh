export LD_LIBRARY_PATH=/usr/lib/:/usr/local/lib
rm necout
gfortran -Og -g nec2d.f -o necout -lscalapack -lblas -lmpi
