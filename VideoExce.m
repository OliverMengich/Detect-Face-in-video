


facedetector = vision.CascadeObjectDetector();
readvideo = vision.VideoFileReader('VideoExample.mp4');

videoplayer = vision.DeployableVideoPlayer();

while ~isDone(readvideo)
    frame = step(readvideo);
    bbox = step(facedetector,frame);
    J = insertObjectAnnotation(frame,'rectangle',bbox,'Face');
    
    step(videoplayer,J)
end