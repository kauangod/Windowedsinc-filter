function images()

% To start the script and display the images, you need to call this function
% in the command window. 

height = 497;
width = 408;
lp_cutoff_freq = 0.05;
hp_cutoff_freq = 0.95;
data = load ('einstein_marilyn.mat');
HI = data.hybrid_image;
imshow(HI, []); figure (1);

WindowSincLP = WSLPF (height, lp_cutoff_freq);
WindowSincHP = WSHPF (height, hp_cutoff_freq);
filtered_hybridLP = zeros(height, width);  
filtered_hybridHP = zeros(height, width);

for i=1:height 
filtered_hybridLP(i,:) = conv(HI(i,:), WindowSincLP, 'same');
filtered_hybridHP(i,:) = conv(HI(i,:), WindowSincHP, 'same');
end 

figure(2); imshow(filtered_hybridLP,[]); 
figure(3); imshow(filtered_hybridHP,[]); 

end