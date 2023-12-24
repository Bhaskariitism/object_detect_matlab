name = 'tiny-yolov3-coco';
detector = yolov3ObjectDetector(name);
img = imread('dog.jpg');
img = preprocess(detector,img);
img = im2single(img);
[bboxes,scores,labels] = detect(detector,img,'DetectionPreprocessing','none');
detectedImg = insertObjectAnnotation(img,'Rectangle',bboxes,labels);
figure
imshow(detectedImg)