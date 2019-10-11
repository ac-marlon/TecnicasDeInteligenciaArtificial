clc

%Leer fotografia y dibujo
dragonBall = imread('dragonBall.jpg');
gordosBotero = imread('gordosBotero.jpg');

%Pasar la imagen a escala de grises
dragonBallGrises = rgb2gray(dragonBall);
gordosBoteroGrises = rgb2gray(gordosBotero);

%Mostrar las imagenes en escala de grises y en color
figure
image(dragonBall)
title('Dragon Ball')

figure
image(gordosBotero)
title('Gordos Botero')

figure
image(dragonBallGrises,'CDataMapping','scaled')
colormap('gray')
title('Dragon Ball - Grises')

figure
image(gordosBoteroGrises,'CDataMapping','scaled')
colormap('gray')
title('Gordos Botero - Grises')

%Se encuentra el gradiente con una mascara de convolucion Gx y Gy
%(horizontal y vertical respectivamente) y 'same' es parte central
%de la convolucion
GradienteHorizontal = [-1 1];
GradienteVertical = GradienteHorizontal';
Bordes = [0 1 0 ; 1 -4 1 ; 0 1 0];
Enfoque = [0 0 0 0 0 ; 0 0 -1 0 0 ; 0 -1 -5 -1 0 ; 0 0 -1 0 0 ; 
    0 0 0 0 0];
Desenfoque = [ 0 0 0 0 0 ; 0 1 1 1 0 ; 0 1 1 1 0 ; 0 1 1 1 0 ; 
    0 0 0 0 0];
Repujado = [-2 -1 0 ; -1 1 1 ; 0 1 2];
Suavizado = [1 2 1 ; 2 4 2 ; 1 2 1];
Perfilado = [-1 -1 -1 ; -1 9 -1 ; -1 -1 -1];

IxDragonBall = conv2(dragonBallGrises, GradienteHorizontal, 'same');
IyDragonBall = conv2(dragonBallGrises, GradienteVertical, 'same');

IxGordosBotero = conv2(gordosBoteroGrises, GradienteHorizontal, 'same');
IyGordosBotero = conv2(gordosBoteroGrises, GradienteVertical, 'same');

bordesDragonBall = conv2(dragonBallGrises, Bordes, 'same');
bordesGordosBotero = conv2(gordosBoteroGrises, Bordes, 'same');

enfoqueDragonBall = conv2(dragonBallGrises, Enfoque, 'same');
enfoqueGordosBotero = conv2(gordosBoteroGrises, Enfoque, 'same');

desenfoqueDragonBall = conv2(dragonBallGrises, Desenfoque, 'same');
desenfoqueGordosBotero = conv2(gordosBoteroGrises, Desenfoque, 'same');

repujadoDragonBall = conv2(dragonBallGrises, Repujado, 'same');
repujadoGordosBotero = conv2(gordosBoteroGrises, Repujado, 'same');

suavizadoDragonBall = conv2(dragonBallGrises, Suavizado, 'same');
suavizadoGordosBotero = conv2(gordosBoteroGrises, Suavizado, 'same');

perfiladoDragonBall = conv2(dragonBallGrises, Perfilado, 'same');
perfiladoGordosBotero = conv2(gordosBoteroGrises, Perfilado, 'same');

%Mostrar el resultado de la convolucion (gradiente) en ambas direcciones,
%los bordes (union de los anteriores, enfoque, desenfoque, realzado,
%repujado, suavizado y perfilado)
figure
image(IxDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Horizontal - Dragon Ball')

figure
image(IyDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Vertical - Dragon Ball')

figure
image(IxGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Horizontal - Gordos Botero')

figure
image(IyGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Vertical - Gordos Botero')

figure
image(bordesDragonBall)
colormap('gray')
title('Union Bordes - Dragon Ball')

figure
image(bordesGordosBotero)
colormap('gray')
title('Union Bordes - Gordos Botero')

figure
image(enfoqueDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Enfoque - Dragon Ball')

figure
image(enfoqueGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Enfoque - Gordos Botero')

figure
image(desenfoqueDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Desnfoque - Dragon Ball')

figure
image(desenfoqueGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Desnfoque - Gordos Botero')

figure
image(repujadoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Repujado - Dragon Ball')

figure
image(repujadoGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Repujado - Gordos Botero')

figure
image(suavizadoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Suavizado - Dragon Ball')

figure
image(suavizadoGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Suavizado - Gordos Botero')

figure
image(perfiladoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Perfilado - Dragon Ball')

figure
image(perfiladoGordosBotero,'CDataMapping','scaled')
colormap('gray')
title('Perfilado - Gordos Botero')
