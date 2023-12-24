% Load the image
load output.mat
%bbox = [];
image = imread('dog.jpg');
%image = imresize(image);
% Bounding box coordinates (x, y, width, height)
bbox = ceil(All_Box(2,:)); 


% Extract the region of interest (ROI) using the bounding box
x = bbox(1);
y = bbox(2);
w = bbox(3);
h = bbox(4);
roi = image(y:y+h-1, x:x+w-1, :);

% Display the original image and the detected ROI
figure;
subplot(1, 2, 1), imshow(image), title('Original Image');
subplot(1, 2, 2), imshow(roi), title('Detected ROI');


