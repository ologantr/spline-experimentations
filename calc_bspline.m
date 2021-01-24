# @in: t [extended partition], i [i-th bspline i = 1 .... m + K],
#      h [order], x [point]

function retval = calc_bspline(t, i, h, x)
  retval = 0;
  if(h == 1)
    if(x >= t(i) && x < t(i+1))
      retval = 1;
    endif
  else
    v1 = 0;
    v2 = 0;
    if(t(i+h-1) != t(i))
      v1 = (x-t(i))/(t(i+h-1)-t(i));
    endif
    if(t(i+h) != t(i+1))
      v2 = (t(i+h)-x)/(t(i+h)-t(i+1));
    endif
    retval = (v1*calc_bspline(t,i,h-1,x))+(v2*calc_bspline(t,i+1,h-1,x));
  endif
endfunction
