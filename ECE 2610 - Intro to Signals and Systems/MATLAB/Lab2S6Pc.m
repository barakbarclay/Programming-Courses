f=150000000;
dur=0.00000002;
t=0:1/(1000000*f):dur;
d1=1500;
d2=sqrt((1500-900)^2+100^2)-sqrt((100-0)^2+900^2);
c=3*10^8;
t1=d1/c;
t2=d2/c;
phi1=-2*pi*(t1/(dur/3));
phi2=-2*pi*(t2/(dur/3));
X=exp(j*phi1)-exp(j*phi2)
zvect(X)