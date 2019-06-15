function p = parameters()
	p.epsilon = 0.0001; % regularization
	p.K = 4; % number of desired clusters
	p.n_iter = 3; % number of iterations
	%p.core_set_indices = [1,2,3,4,5,6]; % Core set of speakers
    p.core_set_indices = [1,2,3,4];
    p.gesture_indices = [1,2,3,4,5];
    p.receiver_indices = [1,2,3,4,5];
    p.CSI_path = 'Data';
    p.background_set_indices = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17];
    p.impostor_set_indices = [8];
    p.r = 3; %relevance factor for MAP adaptation
end

