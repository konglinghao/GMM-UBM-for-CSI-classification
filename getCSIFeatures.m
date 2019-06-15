function data = getCSIFeatures(path, speakerIdx, flag)
data = [];
receiver = [];
if flag == 1 % get train data
    receiver = [1,2,3,4,5];
else % get test data
    receiver = 6;
end
for gestureIdx = 1:5
    for i = 1:length(receiver)
        filePath = strcat(path, '\user', num2str(speakerIdx), '-6-5-5-', num2str(gestureIdx),'-r', num2str(receiver(i)), '.dat');   
        csi_trace = read_bf_file(filePath);
        n = size(csi_trace);
        n = n(1);
        for i = 1:n
            csi_entry = csi_trace{i};
            if size(csi_entry,1) == 0
                break
            end
            csi = get_scaled_csi(csi_entry);
            for rx = 1:3
                csi30(rx,:) = squeeze(csi(1,rx,:));
                csiTime30(i,rx,:) = csi30(rx,:);
            end
            for j = 1:30
                relative12(i,j) = angle(csiTime30(i,1,j)) - angle(csiTime30(i,2,j));
                relative13(i,j) = angle(csiTime30(i,1,j)) - angle(csiTime30(i,3,j));
                relative23(i,j) = angle(csiTime30(i,2,j)) - angle(csiTime30(i,3,j));
            end
        end
        %unwrapedRelative12(gestureIdx,:,:) = unwrap(relative12(:,:));
        %figure;
        %plot(unwrap(relative12(:,:)));
        
        %[coeff,score,latent,tsquare]  = pca(unwrap(relative12(:,:)));
        %data = [data; coeff(2,:)];
        
        data = [data;relative12(:,20)]; % use relative phase of 20th subcarrier as features
        
    end
    % figure;
    % plot(unwrapedRelative12(:,:));
    % figure;
    % plot(coeff(2,:));
    % unwrapedRelative13(:,:) = unwrap(relative13(:,:));
    % figure;
    % plot(unwrapedRelative13(:,:));
    % unwrapedRelative23(:,:) = unwrap(relative23(:,:));
    % figure;
    % plot(unwrapedRelative23(:,:));
end