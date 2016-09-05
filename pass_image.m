function image = pass_image(pass,image)
[l, w] = size(pass);
temp = pass;
temp(temp==1) = 0;
PASS(:,:,1) = pass;
PASS(:,:,2) = pass;
PASS(:,:,3) = temp;
PASS = 1-PASS;
PASS(PASS >= 1000) = 0.3;

if ishandle(image)
    set(image,'CData',PASS)
else
figure('position',[20,10,400,800])
image = imagesc(PASS);
hold on
plot([[0:w]',[0:w]']+0.5,[0,l]+0.5,'k')
plot([0,w]+0.5,[[0:l]',[0:l]']+0.5,'k')
axis image
set(gca,'xtick',[]);
set(gca,'ytick',[]);
end
