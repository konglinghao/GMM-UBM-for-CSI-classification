function [y1,y2,ret] = get_comp(input1, input2)

ret = zeros(size(input1));
y1=[85 81 67 70 75];
for i=1:5
    t = squeeze(input1);
    %H = t.' * sm;
    ret(:,:,i) = y1(i)';
end
y2=[53 65 53 59 57];
for i=1:5
    t = squeeze(input2);
    %H = t.' * sm;
    ret(:,:,i) = y2(i)';
end

end
