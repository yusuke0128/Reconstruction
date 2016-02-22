filename = uigetfile('*');
ORG = imread(filename);
IMG = rgb2gray(ORG);
%�p�������r�[��
[R,xp] = radon(IMG,1:180);
imagesc(R);colormap(gray);colorbar;
xlabel('Angle');ylabel('Radious');
pause;
IMG = abs(iradon(R,1:180));
imagesc(IMG);colormap(gray);colorbar;
xlabel('x');ylabel('y');
pause;
IMG = rgb2gray(ORG);
%�t�@���r�[��
D = 250;
dsensor = 1;
output_size = max(size(ORG));
[R, sensor_pos, fan_rot_angles] = fanbeam(IMG,D,'FanSensorSpacing',dsensor);
imagesc(R);colormap(gray);colorbar;
xlabel('fan_rot_angles');ylabel('sensor_pos');
pause;
IMG = ifanbeam(R,D,'FanSensorSpacing',dsensor,'OutputSize',output_size);
imagesc(IMG);colormap(gray);colorbar;
xlabel('x');ylabel('y');
pause;