
format long
fedge = input('Band edges in Hz = ');
mval = input('Desired magnitude values in each band = ');
dev = input('Desired ripple in each band =');
FT = input('Sampling frequency in Hz = ');
[N,fpts,mag,wt] = remezord(fedge,mval,dev,FT);
b = firpm(N,fpts,mag,wt);
disp('FIR Filter Coefficients'); disp(b)
[h,w] = freqz(b,1,256);
plot(2*w/pi,20*log10(abs(h)));grid;
xlabel('\omega/\pi'); ylabel('Gain, dB');
H = ftrans2(b);
P = freqz2(H);

mesh(P);
plot(P);
contour(P);