function retval = spl(c,t,m,x,i,j=m-1)
  if (j == 0)
    retval = c(i);
  else
    retval = ((x-t(i))*spl(c,t,m,x,i,j-1)+(t(i+m-j)-x)*spl(c,t,m,x,i-1,j-1))/(t(i+m-j)-t(i));
  endif
endfunction
