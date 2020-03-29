function midpointline(x0,y0,x1,y1)
x=x0;y=y0;
b=x1-x0;a=y0-y1;
   grid on;hold on;
   plot(x,y,'o');
        d0=a+2b;
        d1=2*a;
        d2=2*(a+b);
        while (x<x1)
           if(d0 >=0) %取下点，x+1，y不变，d的增量为2a
              x=x+1;
              d0 =d0+d1;
              elseif(d0 < 0)%取上点，x+1，y+1，d的增量为2a+2b
              x=x+1;y=y+1;d0=d0+d2;
          end
          hold on;
          plot(x,y,'o');
      end
  end