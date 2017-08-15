close all;

atmaya_gore = zeros(1,59);

for atma_sayisi = 1000:1000:70000

    atma_sayisi;
    
%atma_sayisi = 550;
iterasyon = 1000/4;

max_avarage = zeros(1,iterasyon);

for turn_count = iterasyon-100:iterasyon

    
    max_points = zeros(1,turn_count);

    for s = 1:turn_count

        x = randi([0 1],1,atma_sayisi);
        point = 0;
        points = zeros(1,atma_sayisi);
        for i = 1:atma_sayisi
            k = x(i);
            if k == 0
                for j = i:atma_sayisi-1
                   if  k == x(j+1)
                       point = j+2-i;
                   else
                       points(i) = point;
                       break;
                   end
                end
            end
        end
    %     
    %     figure
    %     plot(points);
    %     hold on;
    %     plot(x*7,'x');
    %     
        max_points(s) = max(points);

end

%figure
%plot(max_points);

max_avarage(turn_count) =  mean(max_points);

end

atmaya_gore(atma_sayisi) = mean(max_avarage(iterasyon-100:iterasyon));
atmaya_gore(atma_sayisi)
% figure
% plot(max_avarage);

end

figure
plot(atmaya_gore);


% elcevap = 7.2884;
