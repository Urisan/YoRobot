close all
clc
clear all

promt='Introduce un angulo en grados de rotacion en X(Phi): ';
angleXPhi=input(promt);

promt='Introduce un angulo en grados de rotacion en Y(tetha): ';
angleYtheta=input(promt);

promt='Introduce un angulo en grados de rotacion en Z(alpha): ';
angleZaplha=input(promt);


line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on
view(120,30)

P0 = [0 0 0]; 
P1 = [0 3 0]; 
P2 = [0 3 2]; 
P3 = [0 0 2];
P4 = [7 0 2]; 
P5 = [7 3 2]; 
P6 = [7 0 0]; 
P7 = [7 3 0]; 

line ([P0(1) P3(1)],[P0(2) P3(2)],[P0(3) P3(3)], 'color', [1 0 0], 'linewidth',2);  
line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [0 0 1], 'linewidth',2);  
line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P2(1) P3(1)],[P2(2) P3(2)],[P2(3) P3(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(3) P4(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P4(1) P5(1)],[P4(2) P5(2)],[P4(3) P5(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P6(1) P7(1)],[P6(2) P7(2)],[P6(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P7(1) P4(1)],[P7(2) P1(2)],[P7(3) P1(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(3) P4(3)], 'color', [0 0 1], 'linewidth',2);  

line ([P2(1) P5(1)],[P2(2) P5(2)],[P2(3) P5(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P1(1) P7(1)],[P1(2) P7(2)],[P1(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P4(1) P6(1)],[P4(2) P6(2)],[P4(3) P6(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P5(1) P7(1)],[P5(2) P7(2)],[P5(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P0(1) P6(1)],[P0(2) P6(2)],[P0(3) P6(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P5(1) P7(1)],[P5(2) P7(2)],[P5(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [0 0 1], 'linewidth',2);



%-----------convercion de grsdos a radianes-------------------

angleXPhirad=deg2rad(angleXPhi);

angleYthetarad=deg2rad(angleYtheta);

angleZaplharad=deg2rad(angleZaplha);

%--------------------------------------------------------------


for t=0:0.01:angleXPhirad
    
clf 

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on
view(120,30)

P0 = [0 0 0]; 
P1 = [0 3 0]; 
P2 = [0 3 2]; 
P3 = [0 0 2];
P4 = [7 0 2]; 
P5 = [7 3 2]; 
P6 = [7 0 0]; 
P7 = [7 3 0]; 

line ([P0(1) P3(1)],[P0(2) P3(2)],[P0(3) P3(3)], 'color', [1 0 0], 'linewidth',2);  
line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [0 0 1], 'linewidth',2);  
line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P2(1) P3(1)],[P2(2) P3(2)],[P2(3) P3(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(3) P4(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P4(1) P5(1)],[P4(2) P5(2)],[P4(3) P5(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P6(1) P7(1)],[P6(2) P7(2)],[P6(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P7(1) P4(1)],[P7(2) P1(2)],[P7(3) P1(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P3(1) P4(1)],[P3(2) P4(2)],[P3(3) P4(3)], 'color', [0 0 1], 'linewidth',2);  

line ([P2(1) P5(1)],[P2(2) P5(2)],[P2(3) P5(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P1(1) P7(1)],[P1(2) P7(2)],[P1(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P4(1) P6(1)],[P4(2) P6(2)],[P4(3) P6(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P5(1) P7(1)],[P5(2) P7(2)],[P5(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P0(1) P6(1)],[P0(2) P6(2)],[P0(3) P6(3)], 'color', [0 0 1], 'linewidth',2); 
line ([P5(1) P7(1)],[P5(2) P7(2)],[P5(3) P7(3)], 'color', [0 0 1], 'linewidth',2); 

line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [0 0 1], 'linewidth',2);

%--------------------------figura inicial----------------------------------
  
%--------------------------Rotaciones en x---------------------------------
Rx=[1 0 0; 0 cos(t) -sin(t); 0 sin(t) cos(t)];

P0r=Rx*P0';
P1r=Rx*P1';
P2r=Rx*P2';
P3r=Rx*P3';
P4r=Rx*P4';
P5r=Rx*P5';
P6r=Rx*P6';
P7r=Rx*P7';

line ([P0r(1) P3r(1)],[P0r(2) P3r(2)],[P0r(3) P3r(3)], 'color', [1 0 0], 'linewidth',2);  

line ([P0r(1) P1r(1)],[P0r(2) P1r(2)],[P0r(3) P1r(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P1r(1) P2r(1)],[P1r(2) P2r(2)],[P1r(3) P2r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P2r(1) P3r(1)],[P2r(2) P3r(2)],[P2r(3) P3r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P2r(1) P3r(1)],[P2r(2) P3r(2)],[P2r(3) P3r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3r(1) P0r(1)],[P3r(2) P0r(2)],[P3r(3) P0r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4r(1) P5r(1)],[P4r(2) P5r(2)],[P4r(3) P5r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P6r(1) P7r(1)],[P6r(2) P7r(2)],[P6r(3) P7r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3r(1) P4r(1)],[P3r(2) P4r(2)],[P3r(3) P4r(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P2r(1) P5r(1)],[P2r(2) P5r(2)],[P2r(3) P5r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P1r(1) P7r(1)],[P1r(2) P7r(2)],[P1r(3) P7r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4r(1) P6r(1)],[P4r(2) P6r(2)],[P4r(3) P6r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5r(1) P7r(1)],[P5r(2) P7r(2)],[P5r(3) P7r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0r(1) P6r(1)],[P0r(2) P6r(2)],[P0r(3) P6r(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5r(1) P7r(1)],[P5r(2) P7r(2)],[P5r(3) P7r(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0r(1) P1r(1)],[P0r(2) P1r(2)],[P0r(3) P1r(3)], 'color', [0 1 1], 'linewidth',2);

pause (0.0001);
end



%--------------------------Rotacion en Y-----------------------------------
for p=0:0.01:angleYthetarad
 
clf

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on
view(120,30)
   
Ry = [cos(p) 0 sin(p); 0 1 0; -sin(p) 0 cos(p)];

P0ry=Ry*P0r;
P1ry=Ry*P1r;
P2ry=Ry*P2r;
P3ry=Ry*P3r;
P4ry=Ry*P4r;
P5ry=Ry*P5r;
P6ry=Ry*P6r;
P7ry=Ry*P7r;

line ([P0ry(1) P3ry(1)],[P0ry(2) P3ry(2)],[P0ry(3) P3ry(3)], 'color', [1 0 0], 'linewidth',2);  

line ([P0ry(1) P1ry(1)],[P0ry(2) P1ry(2)],[P0ry(3) P1ry(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P1ry(1) P2ry(1)],[P1ry(2) P2ry(2)],[P1ry(3) P2ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P2ry(1) P3ry(1)],[P2ry(2) P3ry(2)],[P2ry(3) P3ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P2ry(1) P3ry(1)],[P2ry(2) P3ry(2)],[P2ry(3) P3ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3ry(1) P0ry(1)],[P3ry(2) P0ry(2)],[P3ry(3) P0ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4ry(1) P5ry(1)],[P4ry(2) P5ry(2)],[P4ry(3) P5ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P6ry(1) P7ry(1)],[P6ry(2) P7ry(2)],[P6ry(3) P7ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3ry(1) P4ry(1)],[P3ry(2) P4ry(2)],[P3ry(3) P4ry(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P2ry(1) P5ry(1)],[P2ry(2) P5ry(2)],[P2ry(3) P5ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P1ry(1) P7ry(1)],[P1ry(2) P7ry(2)],[P1ry(3) P7ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4ry(1) P6ry(1)],[P4ry(2) P6ry(2)],[P4ry(3) P6ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5ry(1) P7ry(1)],[P5ry(2) P7ry(2)],[P5ry(3) P7ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0ry(1) P6ry(1)],[P0ry(2) P6ry(2)],[P0ry(3) P6ry(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5ry(1) P7ry(1)],[P5ry(2) P7ry(2)],[P5ry(3) P7ry(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0ry(1) P1ry(1)],[P0ry(2) P1ry(2)],[P0ry(3) P1ry(3)], 'color', [0 1 1], 'linewidth',2);

pause (0.0001);
end 
 
%--------------------------Rotacion en z-----------------------------------
for m=0:0.01:angleZaplharad
 
clf

line ([-10 10],[0 0],[0 0], 'color', [1 0 0], 'linewidth',2.5); %Establece el eje X Rojo 
line ([0 0],[-10 10],[0 0], 'color', [0 1 0], 'linewidth',2.5); %Establece el eje Y Verde 
line ([0 0],[0 0],[-10 10], 'color', [0 0 1], 'linewidth',2.5); %Establece el eje Y Azul 

grid on
view(120,30)
   
Rz = [cos(m) -sin(m) 0; sin(m) cos(m) 0; 0 0 1];


P0rz=Rz*P0ry;
P1rz=Rz*P1ry;
P2rz=Rz*P2ry;
P3rz=Rz*P3ry;
P4rz=Rz*P4ry;
P5rz=Rz*P5ry;
P6rz=Rz*P6ry;
P7rz=Rz*P7ry;

line ([P0rz(1) P3rz(1)],[P0rz(2) P3rz(2)],[P0rz(3) P3rz(3)], 'color', [1 0 0], 'linewidth',2);  

line ([P0rz(1) P1rz(1)],[P0rz(2) P1rz(2)],[P0rz(3) P1rz(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P1rz(1) P2rz(1)],[P1rz(2) P2rz(2)],[P1rz(3) P2rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P2rz(1) P3rz(1)],[P2rz(2) P3rz(2)],[P2rz(3) P3rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P2rz(1) P3rz(1)],[P2rz(2) P3rz(2)],[P2rz(3) P3rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3rz(1) P0rz(1)],[P3rz(2) P0rz(2)],[P3rz(3) P0rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4rz(1) P5rz(1)],[P4rz(2) P5rz(2)],[P4rz(3) P5rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P6rz(1) P7rz(1)],[P6rz(2) P7rz(2)],[P6rz(3) P7rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P3rz(1) P4rz(1)],[P3rz(2) P4rz(2)],[P3rz(3) P4rz(3)], 'color', [0 1 1], 'linewidth',2);  
line ([P2rz(1) P5rz(1)],[P2rz(2) P5rz(2)],[P2rz(3) P5rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P1rz(1) P7rz(1)],[P1rz(2) P7rz(2)],[P1rz(3) P7rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P4rz(1) P6rz(1)],[P4rz(2) P6rz(2)],[P4rz(3) P6rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5rz(1) P7rz(1)],[P5rz(2) P7rz(2)],[P5rz(3) P7rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0rz(1) P6rz(1)],[P0rz(2) P6rz(2)],[P0rz(3) P6rz(3)], 'color', [0 1 1], 'linewidth',2); 

line ([P5rz(1) P7rz(1)],[P5rz(2) P7rz(2)],[P5rz(3) P7rz(3)], 'color', [0 1 1], 'linewidth',2); 
line ([P0rz(1) P1rz(1)],[P0rz(2) P1rz(2)],[P0rz(3) P1rz(3)], 'color', [0 1 1], 'linewidth',2);

pause (0.0001);
 end 

