% Cargamos la imagen 
I = rgb2gray(imread('./Imagenes/ladrillos1.jpg'));

figure, imshow(I); title('Imagen a escala de grises');

% Identificamos las equinas del objeto de la imagen
corners = detectFASTFeatures(I);

figure, imshow(I);
hold on,
plot(corners.selectStrongest(25), "MarkerSize", 10);
