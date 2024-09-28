% Problem D.3 - Audio Compression Algorithm
load_xaudio = getfield(load("ELE532_Lab1_Data.mat"), "x_audio");

% Set elements of x_audio < 0.03 to 0
load_xaudio([load_xaudio < 0.03]) = 0;

% Display the number of elements set to 0
disp(['Compressed! ', num2str(length(load_xaudio([load_xaudio == 0]))), ' elements set to 0.'])

% Play the compressed audio at 8000 Hz
sound(load_xaudio, 8000);
