function roi = extractROI(image, bbox)
    % Extract the region of interest (ROI) using the bounding box
    x = bbox(1);
    y = bbox(2);
    w = bbox(3);
    h = bbox(4);
    roi = image(y:y+h-1, x:x+w-1, :);
end