clc

%Leer fotografia y dibujo
dragonBall = imread('dragonBall.jpg');
selfie = imread('selfie.jpg');

%Irgb = imresize(Irgb, 0.1);

%Pasar las imagenes a escala de grises
dragonBall = rgb2gray(dragonBall);
selfie = rgb2gray(selfie);

%Los FIS solo soportan datos con single-precision y 
%double-precision , por ello se transforma la imagen
bragonBallFin = im2double(dragonBall);
selfieFin = im2double(selfie);

%Muestra los resultados de Edge-Detect usando cuatro algoritmos clasicos
bestEdgeImg = EdgeDetectionClasic(bragonBallFin);
bestEdgeImg2 = EdgeDetectionClasic(selfieFin);

%Calcula las dimensiones de la imagen que sera procesada
alto = numel(bragonBallFin(:, 1));
ancho = numel(bragonBallFin(1, :));

alto2 = numel(selfieFin(:, 1));
ancho2 = numel(selfieFin(1, :));

%Se encuentra el gradiente con una mascara de convolucion Gx y Gy
%(Horizontal y vertical respectivamente) y 'same' es parte central
%de la convoucion
Gx = [-1 1];
Gy = Gx';
Ix = conv2(bragonBallFin, Gx, 'same');
Iy = conv2(bragonBallFin, Gy, 'same');

Gx2 = [-1 1];
Gy2 = Gx2';
Ix2 = conv2(selfieFin, Gx2, 'same');
Iy2 = conv2(selfieFin, Gy2, 'same');

%Mostrar el resultado de la convolucion (gradiente) de forma escalada
figure
image(Ix,'CDataMapping','scaled')
colormap('gray')
title('Ix')
figure
image(Iy,'CDataMapping','scaled')
colormap('gray')
title('Iy')

figure
image(Ix2,'CDataMapping','scaled')
colormap('gray')
title('Ix2')
figure
image(Iy2,'CDataMapping','scaled')
colormap('gray')
title('Iy2')


%Condicion inicial
condIni = [0.1 0 0.1 0 0.1 1 0 0.7];
% condIni = [0.5 0.1 0.5 -0.1 0.25 0.9 0.1 0.9];
% condIni = [0.25 0 0.05 0 0.1 0.9 0.3 0.95];
% condIni = [0.05 0.01 0.25 -0.01 0.3 0.7 0.3 0.4];

%Funcion que genera el FIS original
edgeFIS = NuevoFIS(condIni); 
edgeFIS2 = NuevoFIS(condIni);

%Evalua el FIS con la foto leida inicialmente
Ieval = zeros(size(bragonBallFin));
for ii = 1:size(bragonBallFin,1)
    Ieval(ii,:) = evalfis(edgeFIS,[(Ix(ii,:));(Iy(ii,:))]');
end

Ieval2 = zeros(size(selfieFin));
for ii = 1:size(selfieFin,1)
    Ieval2(ii,:) = evalfis(edgeFIS2,[(Ix2(ii,:));(Iy2(ii,:))]');
end

%Muestra la comparacion entre la imagen original en escala de
%grises y los bordes detectados usando el FIS
figure
image(bragonBallFin,'CDataMapping','scaled')
colormap('gray')
title('Original Grayscale Image')

figure
image(Ieval,'CDataMapping','scaled')
colormap('gray')
title('Edge Detection Using Fuzzy Logic')

figure
image(selfieFin,'CDataMapping','scaled')
colormap('gray')
title('Original Grayscale Image 2')

figure
image(Ieval2,'CDataMapping','scaled')
colormap('gray')
title('Edge Detection Using Fuzzy Logic 2')
