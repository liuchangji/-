function get_hist(I)
Ir=I(:,:,1);%��ȡ��ɫ����
Ig=I(:,:,2);%��ȡ��ɫ����
Ib=I(:,:,3);%��ȡ��ɫ����
figure;
subplot(1,3,1);
imhist(Ir);
title('I). ��ɫ����ֱ��ͼ');
subplot(1,3,2);
imhist(Ig);
title('I). ��ɫ����ֱ��ͼ');
subplot(1,3,3);
imhist(Ib);
title('I). ��ɫ����ֱ��ͼ');
end

