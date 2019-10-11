function edgeFIS = NuevoFIS(condIni)
    
    %Se define el FIS tipó Mamdani
    edgeFIS = mamfis('Name', 'edgeDetection');

    %Se definen las entradas del FIS con rangos de -1 a 1
    edgeFIS = addInput(edgeFIS, [-1 1], 'Name', 'Ix');
    edgeFIS = addInput(edgeFIS, [-1 1], 'Name', 'Iy');

    %Se añaden las funcioes de pertenencia tipo gaussmf con los parametros
    %entre los corchetes [0.1 0] para las dos entradas
    edgeFIS = addMF(edgeFIS, 'Ix', 'gaussmf', [condIni(1) condIni(2)], 'Name', 'zero');
    edgeFIS = addMF(edgeFIS, 'Iy', 'gaussmf', [condIni(3) condIni(4)], 'Name', 'zero');

    %Se define la salida del FIS con rango de 0 a 1
    edgeFIS = addOutput(edgeFIS, [0 1], 'Name', 'Iout');

    %Se añaden las funcioes de pertenencia tipo trimmf con los parametros
    %entre los corchetes [0.1 1 1] y [0 0 0.7] para la salida
    edgeFIS = addMF(edgeFIS, 'Iout', 'smf', [condIni(5) condIni(6)], 'Name', 'white');
    edgeFIS = addMF(edgeFIS, 'Iout', 'zmf', [condIni(7) condIni(8)], 'Name', 'black');
    
    %Se muestran los conjuntos difusos definidos anteriormente
    figure
    subplot(2, 2, 1)
    plotmf(edgeFIS, 'input', 1)
    title('Ix')
    subplot(2, 2, 2)
    plotmf(edgeFIS, 'input', 2)
    title('Iy')
    subplot(2, 2, [3 4])
    plotmf(edgeFIS, 'output', 1)
    title('Iout')

    %Se definen y se añaden las dos reglas para diferenciar cuando hay bordes
    %y cuando no (en terminos de blanco y negro)
    r1 = "If Ix is zero and Iy is zero then Iout is white";
    r2 = "If Ix is not zero or Iy is not zero then Iout is black";
    edgeFIS = addRule(edgeFIS, [r1 r2]);
    edgeFIS.Rules

end