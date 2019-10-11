function bestEdgeImg = EdgeDetectionClasic(img)

    %Muestra los resultados de Edge-Detect usando cuatro algoritmos clasicos
    
    edaSobel = edge(img,'Sobel');
    edaSobel = imcomplement(edaSobel);
    edaCanny = edge(img,'Canny');
    edaCanny = imcomplement(edaCanny);
    edaPrewitt = edge(img,'Prewitt');
    edaPrewitt = imcomplement(edaPrewitt);
    edaRoberts = edge(img,'Roberts');
    edaRoberts = imcomplement(edaRoberts);
    
    figure
    subplot(2,2,1)
    image(edaSobel, 'CDataMapping', 'scaled')
    colormap('gray')
    title('Edge Detection - Sobel Method')

    subplot(2,2,2)
    image(edaCanny, 'CDataMapping', 'scaled')
    colormap('gray')
    title('Edge Detection - Canny Method')

    subplot(2,2,3)
    image(edaPrewitt, 'CDataMapping', 'scaled')
    colormap('gray')
    title('Edge Detection - Prewitt Method')

    subplot(2,2,4)
    image(edaRoberts, 'CDataMapping', 'scaled')
    colormap('gray')
    title('Edge Detection - Roberts Method')
    
    bestEdgeImg = edaCanny;
    bestEdgeImg = im2double(bestEdgeImg);
    
end
