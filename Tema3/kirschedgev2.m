function y = kirschedgev2(x)
    x = double(x);
    g1 = [5, 5, 5; -3, 0, -3; -3, -3, -3];
    g2 = [5, 5, -3; 5, 0, -3; -3, -3, -3];
    g3 = [5, -3, -3; 5, 0, -3; 5, -3, -3];
    g4 = [-3, -3, -3; 5, 0, -3; 5, 5, -3];
    g5 = [-3, -3, -3; -3, 0, -3; 5, 5, 5];
    g6 = [-3, -3, -3; -3, 0, 5; -3, 5, 5];
    g7 = [-3, -3, 5; -3, 0, 5; -3, -3, 5];
    g8 = [-3, 5, 5; -3, 0, 5; -3, -3, -3];
    
    x1 = abs(imfilter(x, g1, 'replicate'));
    x2 = abs(imfilter(x, g2, 'replicate'));
    x3 = abs(imfilter(x, g3, 'replicate'));
    x4 = abs(imfilter(x, g4, 'replicate'));
    x5 = abs(imfilter(x, g5, 'replicate'));
    x6 = abs(imfilter(x, g6, 'replicate'));
    x7 = abs(imfilter(x, g7, 'replicate'));
    x8 = abs(imfilter(x, g8, 'replicate'));
    
    y1 = max(x1, x2);
    y2 = max(y1, x3);
    y3 = max(y2, x4);
    y4 = max(y3, x5);
    y5 = max(y4, x6);
    y6 = max(y5, x7);
    y7 = max(y6, x8);
    
    y = y7;
end
