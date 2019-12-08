%PROBLEM 2-MATLAB
x1 = input('Enter 1st point of x: ');
x2 = input('Enter 2nd point of x: ');
x3 = input('Enter 3rd point of x: ');
y1 = input('Enter 1st point of y: ');
y2 = input('Enter 2nd point of y: ');
y3 = input('Enter 3rd point of y: ');
a1 = [x1, y1, 1; x2, y2, 1; x3, y3, 1];
a2 = det(a1);
b1 = [((x1)^2+(y1)^2), y1, 1; ((x2)^2+(y2)^2), y2, 1; ((x3)^2+(y3)^2), y3, 1];
b2 = -det(b1);
c1 = [((x1)^2+(y1)^2), x1, 1; ((x2)^2+(y2)^2), x2, 1; ((x3)^2+(y3)^2), x3, 1];
c2 = det(c1);
d1 = [((x1)^2+(y1)^2), x1, y1; ((x2)^2+(y2)^2), x2, y2; ((x3)^2+(y3)^2), x3, y3];
d2 = -det(d1);
h = (b2/(2*a2));
k = (c2/(2*a2));
r = sqrt(((b2^2)+(c2^2)-(4*a2*d2))/(4*(a2^2)));
D = b2/a2;
E = c2/a2;
F = d2/a2;
fprintf('Center(%.2f, %.2f)', h, k);
fprintf('\nRadius %.2f', r);
fprintf('\nVector[%.2f, %.2f, %.2f]', D, E, F)