function result = get_bar(input1, input2)

x=[1 2 3 4 5];
[y1,y2,ret]=get_comp(input1, input2);
figure;
y_all=[y1;y2]';
bar(x,y_all)
title('Authentication accuracy of two methods','fontsize', 16)
xlabel('Different Users','fontsize', 18)
ylabel('Accuracy %','fontsize', 18)
set(gca,'xticklabel',{'User1','User2','User3','User4','Overall'},'fontsize', 18)
legend('GMM-UBM','GMM','fontsize', 18);
end
