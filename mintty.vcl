# Voice commands for mintty

include unix.vcl;

zoom out = ctrl(-);
zoom out 1..9 = ctrl(-_$1);
zoom in = ctrl(+);
zoom in 1..9 = ctrl(+_$1);
