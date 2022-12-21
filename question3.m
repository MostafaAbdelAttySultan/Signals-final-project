%Configruring the function Fourier Series parts
nNeg = -10:-1;
nPos = 1:10;
fnNeg = (((1 + 1i*2*nNeg)*pi).^(-1)).*(1-exp((-pi)*(1 + 1i*2*nNeg)));
fnPos = (((1 + 1i*2*nPos)*pi).^(-1)).*(1-exp((-pi)*(1 + 1i*2*nPos)));
%adding the intervals parts togather
n = [nNeg 0 nPos];
fn = [fnNeg (1/pi)*(1-exp(-pi)) fnPos];
%plotting spectrums
figure(6);
subplot(2,1,1);stem(n,abs(fn),'r','LineWidth',1);title('Magnitude Spectrums');
subplot(2,1,2);stem(n,angle(fn),'r','LineWidth',1);title('Angle Spectrums');