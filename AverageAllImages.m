function img_average = AverageAllImages(I)
N = size(I,1);

[m,n] = size(cell2mat(I(1)));
img_average = zeros(m,n);
for i = 1:N
    temp = cell2mat(I(i));
    img_average = img_average + 1/N*temp;
end

end