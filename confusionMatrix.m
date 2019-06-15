function result = confusionMatrix(input)
%========================================
%authentication 

%figure
%conmatrixNew(act_user',both_result_user');
%set (gcf,'Position',[400,100,655,500]);
%figure;
%confusion_matrix_user(act_user_2,bed_result_user,12);
%set (gcf,'Position',[400,100,655,500]);
%act_finger = xlsread('Finger','actuall');
%result_finger_living = xlsread('Finger','result_living');
%result_finger_bed = xlsread('Finger','result_bed');

%confusion_matrix_finger(act_finger,result_finger_living,120)%num = sample time
%figure;
%confusion_matrix_finger(act_finger,result_finger_bed,120)%num = sample time
%figure;
%figure;
%confusion_matrix_user(act_user,living_result_user,12)
%figure;
%confusion_matrix_user(act_user,bed_result_user,12);

result_user = get_matrix(input);

act_user_2 = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,...
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,...
    3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,...
    4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4];

confusion_matrix_user(act_user_2,result_user,17);
set (gcf,'Position',[400,100,655,500]);