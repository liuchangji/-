
%{ 
            
                                                  icbPMR.                                                                         
                                             :rfFDpbhPP@                                                                          
                                       .7tRR@Q@MR9DS0SZQ.                                                                         
                                   :7DR@RQDMpEXEXbSbSD0@                                                                          
                                7X@R@ZMPDXbSbSEXDPZbRM@R,    ,ri7rc7JcfY2cjri..                                                   
                            .jE@RQ9EPEhbSbXEPZEQR@RQhti:     ,.,...,.:,iiYJER@Q@R@X1i:                                            
                          YD@RRpDXbS0hEPD9RM@QRt7.      :                     .:XQ@Q@R@Zpr.                                       
                       :h@RR9ES0h0SEPDb@Q@Pj,         iP7p,                       ,MRRbRM@QQc.                                    
                     ,MQ@9ES0h0h0PZb@RRJ:           if9c.FpY.                       7QMXbPDE@Q9                                   
                   ,p@ZZX0hbSbXE9QRQL,            .11FjL SYFFY                       LMbS0SEXMR@:                                 
                  URQpES0h0S0XZM@S:             .79UUchi JfLttPi                      Q9bS0h0SDD@.                                
                 MRMPbSbh9hbPQRP               7hSYULt2i fjUcUYPfi                    MDS0hbh0hDRb                                
                RRDX0hbh9hE9@b,              :P22YUcfUE. 79UfYUY1F1.                 i@Xbh0S0h0XQD                                
               XQDS0h0hbS0p@Y              :U9jfY1jY:,     :iUJ1Y2t07.              .@9ES9hbSbSDR2                                
              .RMX0S9hbFbP@c              fhSjtri.. .,7JPLi.. .,r71jXh7            :@EEh0F0h0hEZ@                                 
              :@p0h0S0h0XRp             7E2Y::.:,77FthJ2Y1jht2rr,,.iiUF0:         2@EES0h0SbSED@.                                 
              ,QMX0S0h0hEM7           cXP7crJJPF92X2htSthUhtStPF9FSYYrYY01i     UR@pEh0S0S0XZR@.                                  
               XRZP0h0hbSQr         .JYcrY7ULJ7Y7crYrY7YrcrY7c7Y7Y7j7J77iri. ,t@RMPES9S0hEpRQb                                    
                hRQ9ESbhb9Q                                                7RRQ9ES0h0S0SDD@Mi                                     
                 :b@RR9EXEZQ.                                          :cMRQbDXbh0h0SEpRQQi                                       
                   .1M@Q@ERM@f,                                    ,UP@Q@EDPbSbh0SEpRR@pi                                         
                       71RQ@R@R@2r                           .,c1RR@RR9DXbS0S0XE9RR@Zj                                            
                           .r7pZ@R@R@EpYYir::,:,:,i.    :YS0@Q@RQEZPbX0SbSbSD0RR@Df.                                              
                                   ..ii7rLrLr7ir:i,.    F@RQ9DPEXbXbSbXDpMD@R@XL                                                  
                                                        2RDXbSbXEXDPMZ@R@Mb7:                                                     
                                                        Y@PEPDbRM@R@RZJr                                                          
                                                        SR@R@R@EP7i              

               @@@@         .            @@@@@@                                         @@@@@@            
          7@@@@@@@@@@t    ,@@@i      7Q@@@@@@@@@@D:      M@@@@Q           @@@@@h    0@@@@@@@@@@D:       
         @@@@7    :@@@@.  .@@@:    i@@@@L.    .1@@@@     9@@Q@@D         R@@Q@@U    h@@@     c@@@Z      
        @@@M        77:    @@@:   ,@@@Y          R@@@    X@@i:@@P       9@@ Y@@Y    2@@@      :@@@      
       i@@@                @@@:   @@@@            @@@J   S@@J P@@f     f@@c 0@@Y    f@@@      @@@@      
       Y@@@                @@@:   @@@Z            @@@X   S@@1  R@@Y   7@@p  Z@@Y    f@@@@@@@@@@@2       
       .@@@i               @@@:   P@@@           ,@@@,   S@@h   @@@: ,@@R   M@@Y    f@@@LtF1Y:          
        9@@@,       @@@:  .@@@:    @@@@         :@@@P    X@@S    @@@:@@@    R@@J    2@@@                
         J@@@@9jYh@@@@Z   .@@@i     S@@@@Z2JjhR@@@@r     Z@@D     @@@@@     @@@F    9@@@                
           i0@@@@@@Mr     .@@@,       :P@@@@@@@@U.       1@@2      @@@      0@@7    J@@@        




%}

close all;
clear;

%��������ģʽ���ء���������������������������������������������������������������
ScienceMode=0;           %����ģʽ����
LightBalanceMode=1;      %��ƽ�⿪�أ��Ƿ����ù���ƽ��
DarkChannelMode=0;       %��ͨ��ȥ��ģʽ,ûʲô��,�����������������Ҿ��������Զ���


%����������ͨ������������������������������������������������������������������

w=0.5;
minfilternum=3;

%���������վ���ģ�顪��������������������������������������������������������������
MutiScaleMode=0;         %��߶Ⱦ���ģʽ,�ٶ���,û�õļ��㷽ʽ�����ô���
light_sen=100;            %���ڵ��������е�c��light_sen ��߶�����ϵ����Խ��Թ�ǿ����ȡԽϸ�ڣ�����˰���ͼ���С�ֳɶ��ٿ顣С������ȫ�ֹ⣬ʵ����ȡֵ���Ժ󣬣������ٶ�Ҳ����                           
AdaptiveEntropyMode=1;   %������Ӧģʽ�������ر���������Ƭ���ر��ر�ڻ��ر��ر���������������Զ�����ƽ��ϵ�������ã����ţ�                        
light_enhance=0.5;       %light_enhance������ƽ��ǿ��ϵ����Խ�󷴶�����ƽ��ǿ��Խ����һ����0.4-0.6��������̫ǿ���Լ��Ĵ��

%����Сһ�����г߶���ϴ����������ƽ��ǿ��



%������ɫ�׵���ģ�顪��������������������������������������������������������������
ChannelBalanceMode=1;   %ͨ������ģʽ
off_sen=1;              %�����ر��������ر𰵵�ͼƬ�������ƫ��ϵ����ƫ������ϵ�������ֵԽ��Ҫ��ƫ�Ƹ�С�����ֵԽС��Խ�ܸ�ӦС�ı��ˣ�
                        %0-1���Ұɣ�̫���˻�ʹ�����½춼��0
                        
off_size=2;          %�������ƫ�ƣ���ô�ƶ����ڵĳ̶��Ƕ��٣�0-2֮�䣬̫���˻��Ƴ���
loss=2;                 %��Ҫ�����������꣬�����Խ���������ݾ�Խ�࣬ԽС��ǿЧ��Խǿ��
channel_sen=5;        %ͨ����ƽ������ϵ����Խ��Ͷ�ƫ��Խ����,0-10��û�����⣬0�������У�������Խ������ͨ��

%�����������򡪡���������������������������������������������������������������������
[f,p] = uigetfile('*.*','ѡ��ͼ���ļ�');
if f
    I=imread(strcat(p,f));
end

input = I;
tic;   %��ʱ����ʼ

I = adaptiveadj (I,off_sen,off_size,loss,channel_sen,ScienceMode,ChannelBalanceMode);
afterAdAdj=I;
if ScienceMode==1
    figure;
    imshow(afterAdAdj);
end

if LightBalanceMode==1 
    I=lightbalance(I,light_sen,light_enhance,ScienceMode,MutiScaleMode,AdaptiveEntropyMode);
    afterLigBal=I;
    mytimer1=toc;%��ʱ��
    disp(mytimer1);
    figure;
    imshow([input, afterLigBal]);
else
    mytimer1=toc;%��ʱ��
    disp(mytimer1);
end

if DarkChannelMode==1;
    I=im2double(I);
    afterdehaze=darkchannel_hazeremove(I,w,minfilternum,ScienceMode);
    figure;
    imshow(afterdehaze);
    title('ȥ���')
end




%����������ʼ�������ݡ�������������������������������������������������������������������������������������������
%{
%���������վ���ģ�顪����������������������������
MutiScaleMode=0;         %��߶Ⱦ���ģʽ,�ٶ���,û�õļ��㷽ʽ�����ô���
light_sen=20;            %light_sen ��߶�����ϵ����Խ��Թ�ǿ����ȡԽϸ�ڣ�С������ȫ�ֹ⣬                           %�������Ϊ��ͼƬ�óɶ��ٷ�ȥ��ȡ���գ�����ȡ8-12
AdaptiveEntropyMode=1;   %������Ӧģʽ�������ر���������Ƭ���ر��ر�ڻ��ر��ر���������������Զ�����ƽ��ϵ�������ã����ţ�                        
light_enhance=0.45;       %light_enhance������ƽ��ǿ��ϵ����Խ�󷴶�����ƽ��ǿ��Խ����һ����0.4-0.45��������̫ǿ���Լ��Ĵ��

%����Сһ�����г߶���ϴ����������ƽ��ǿ��

%������ɫ�׵���ģ�顪����������������������������
ChannelBalanceMode=1;   %ͨ������ģʽ
off_sen=1;              %�����ر��������ر𰵵�ͼƬ�������ƫ��ϵ����ƫ������ϵ�������ֵԽ��Ҫ��ƫ�Ƹ�С�����ֵԽС��Խ�ܸ�ӦС�ı���
off_size=0.75;          %�������ƫ�ƣ���ô�ƶ����ڵĳ̶��Ƕ���
loss=2;                 %��Ҫ�����������꣬�����Խ���������ݾ�Խ�࣬ԽС��ǿЧ��Խǿ��
channel_sen=1.5;        %ͨ����ƽ������ϵ����Խ��Ͷ�ƫ��Խ����,1��������ֵ��0�������У�������Խ������ͨ��

%}
%������û�ˡ���������



%(�b-�b)�ĥ� �ɱ�~-bilibili����������������������������������������������������������������
% CIOMP ͼ�� 









