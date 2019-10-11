clc

%Leer fotografia y dibujo
dragonBall = imread('dragonBall.jpg');
selfie = imread('selfie.jpg');

%Pasar la imagen a escala de grises
dragonBallGrises = rgb2gray(dragonBall);
selfieGrises = rgb2gray(selfie);

%Mostrar las imagenes en escala de grises y en color
figure
image(dragonBall)
title('Dragon Ball')

figure
image(selfie)
title('Selfie')

figure
image(dragonBallGrises,'CDataMapping','scaled')
colormap('gray')
title('Dragon Ball - Grises')

figure
image(selfieGrises,'CDataMapping','scaled')
colormap('gray')
title('Selfie - Grises')

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

IxSelfie = conv2(selfieGrises, GradienteHorizontal, 'same');
IySelfie = conv2(selfieGrises, GradienteVertical, 'same');

bordesDragonBall = conv2(dragonBallGrises, Bordes, 'same');
bordesSelfie = conv2(selfieGrises, Bordes, 'same');

enfoqueDragonBall = conv2(dragonBallGrises, Enfoque, 'same');
enfoqueSelfie = conv2(selfieGrises, Enfoque, 'same');

desenfoqueDragonBall = conv2(dragonBallGrises, Desenfoque, 'same');
desenfoqueSelfie = conv2(selfieGrises, Desenfoque, 'same');

repujadoDragonBall = conv2(dragonBallGrises, Repujado, 'same');
repujadoSelfie = conv2(selfieGrises, Repujado, 'same');

suavizadoDragonBall = conv2(dragonBallGrises, Suavizado, 'same');
suavizadoSelfie = conv2(selfieGrises, Suavizado, 'same');

perfiladoDragonBall = conv2(dragonBallGrises, Perfilado, 'same');
perfiladoSelfie = conv2(selfieGrises, Perfilado, 'same');

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
image(IxSelfie,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Horizontal - Selfie')

figure
image(IySelfie,'CDataMapping','scaled')
colormap('gray')
title('Gradiente Vertical - Selfie')

figure
image(bordesDragonBall)
colormap('gray')
title('Union Bordes - Dragon Ball')

figure
image(bordesSelfie)
colormap('gray')
title('Union Bordes - Selfie')

figure
image(enfoqueDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Enfoque - Dragon Ball')

figure
image(enfoqueSelfie,'CDataMapping','scaled')
colormap('gray')
title('Enfoque - Selfie')

figure
image(desenfoqueDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Desnfoque - Dragon Ball')

figure
image(desenfoqueSelfie,'CDataMapping','scaled')
colormap('gray')
title('Desnfoque - Selfie')

figure
image(repujadoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Repujado - Dragon Ball')

figure
image(repujadoSelfie,'CDataMapping','scaled')
colormap('gray')
title('Repujado - Selfie')

figure
image(suavizadoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Suavizado - Dragon Ball')

figure
image(suavizadoSelfie,'CDataMapping','scaled')
colormap('gray')
title('Suavizado - Selfie')

figure
image(perfiladoDragonBall,'CDataMapping','scaled')
colormap('gray')
title('Perfilado - Dragon Ball')

figure
image(perfiladoSelfie,'CDataMapping','scaled')
colormap('gray')
title('Perfilado - Selfie')