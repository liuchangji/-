function Out = adaptiveadj (I,off_sen,off_size,loss,channel_sen,ScienceMode,ChannelBalanceMode)
% close;close;close;
    if ScienceMode==1
        get_hist(I);
    end
% off_sen=1;  %ƫ������ϵ�������ֵԽ��Ҫ��ƫ�Ƹ�С�����ֵԽС��Խ�ܸ�ӦС�ı���
% off_size=0.75;%�������ƫ�ƣ���ô�ƶ����ڵĳ̶��Ƕ���
% loss=2;%  ��Ҫ�����������꣬�����Խ���������ݾ�Խ�࣬ԽСЧ��Խǿ��
% channel_sen=0.5;ͨ����ƽ������ϵ����Խ��Ͷ�ƫ��Խ����,1��������ֵ��0�������У�������Խͻ����ͨ��
[std_off,mean_off,weight_by_ent,ent]=pointcounter(I,channel_sen);
if ChannelBalanceMode==0
    std_off=std_off.*0;
    mean_off=mean_off.*0;
end

%�ڶ���ֵ��ͨ����ƽ������ϵ����Խ��Ͷ�ƫ��Խ����,1��������ֵ��0�������У�������Խͻ����ͨ��

% weight_r=mr/m_sum+(1-std_r/std_sum);
% weight_g=mg/m_sum+(1-std_g/std_sum);
% weight_b=mb/m_sum+(1-std_b/std_sum);
% weight=[weight_r,weight_g,weight_b];
% weight=weight/sum(weight);
% m_weight=(weight_r*mr+weight_b*mb+weight_g*mb)/3;
% std_weight=(weight_r*std_r+weight_g*std_g+weight_b*std_b)/3;
    for i = 1:3
        m=mean(mean(I(:,:,i)));
        std=std2(I(:,:,i));

        off_right=m+off_sen*std-255;%�Ҳ೬������˵���������ؼ������Ҳ࣬��ʱ��ƫ�ƣ�ͻ���Ҳ�
        off_left=off_sen*std-m;%��೬������˵���������ؼ�������࣬��ʱ��ƫ�ƣ�ͻ�����
        if off_right<0    %<0˵����ƫ��
            off_right=0;
        end
        if off_left<0;  %��0˵����ƫ��
           off_left=0;
        end
        if off_left>=off_right
            off=-off_size*off_left;
        else
            off=off_size*off_right;
        end
        LOW=min(max((m+mean_off(i)-(loss)*std-std_off(i)+off)/255,0),1);%��ֹ���,�������Χ��ȡֵ
    %     LOW=min(max((m+mean_off(i)-(loss+std_off(i))*std+off)/255,0),1);%��ֹ���,�������Χ��ȡֵ
        LOW1=LOW*255;
        HIGH=max(min((m+mean_off(i)+(loss)*std+std_off(i)+off)/255,1),0);
    %     HIGH=max(min((m+mean_off(i)+(loss+std_off(i))*std+off)/255,1),0);
        HIGH1=HIGH*255;
        Out(:,:,i) = imadjust(I(:,:,i),[LOW HIGH],[]); 
    end
    if ScienceMode==1
        get_hist(Out);
    end
end
% get_hist(Out);
% m_out=mean(mean(mean(Out)));