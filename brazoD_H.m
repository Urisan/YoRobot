clc;
close all;
clear all;

disp('Brazo con Prametros de Denavit- Hartenberg')

%Definicon del punto inicial y paramtroes D_H eslabón base------------------------------------------
P0=[0 0 0]';

promt='Introduce el valor del angulo(°) theta1: ';
Theta1=input(promt);%Rontación en z

promt='Introduce el valor del angulo(°) theta2: ';
Theta2=input(promt);%Rontación en z

promt='Introduce el valor del angulo(°) theta3: ';
Theta3=input(promt);%Rontación en z

promt='Introduce el valor del L1: ';
L1=input(promt);%Rontación en z

promt='Introduce el valor del L2: ';
L2=input(promt);%Rotación en z

promt='Introduce el valor del L3: ';
L3=input(promt);%Rotación en z

%Convercion de angulos a radianes
theta1Rad=deg2rad(Theta1);
theta2Rad=deg2rad(Theta2);
theta3Rad=deg2rad(Theta3);

% Comprabacion si el angulo es positivo o negatico para angulo de eslabon 1---------------------
if Theta1>=0
    
    anVec=0:0.1:theta1Rad;
else
    anVec=0:-0.1:theta1Rad;
    
end

if Theta2>=0
    
    anVec2=0:0.1:theta2Rad;
else
    anVec2=0:-0.1:theta2Rad;
    
end

if Theta3>=0
    
    anVec3=0:0.1:theta3Rad;
else
    anVec3=0:-0.1:theta3Rad;
    
end

for i=1:length(anVec)
clf
line([-10 10],[0 0],[0 0],'color',[1 0 0], 'linewidth' ,2.5);%eje x
line([0 0],[-10 10],[0 0],'color',[0 1 0], 'linewidth' ,2.5);%eje y
line([0 0],[0 0],[-10 10],'color',[0 0 1], 'linewidth' ,2.5);%eje Z
view (98,20);
%Matrices de transformacipon homogennia 
A1=[cos(anVec(i)) 0 sin(anVec(i)) 0;sin(anVec(i)) 0 -sin(anVec(i)) 0;0 1 0 L1;0 0 0 1];
P1=A1(1:3,4);

line([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)],'color',[1 0 1], 'linewidth' ,4.5);

eje_x_1 = A1 ( 1 : 3 , 1 );
eje_y_1 = A1 ( 1 : 3 , 2 );
eje_Z_1 = A1 ( 1 : 3 , 3 );
line ([P0(1) eje_x_1(1)], [P0(2) eje_x_1(2)], [P0(3) eje_x_1(3)], 'linewidth' , 5 , 'color' , [ 1  0  0 ] )
line ([P0(1) eje_y_1(1)], [P0(2) eje_y_1(2)], [P0(3) eje_y_1(3)], 'linewidth' , 5 , 'color' , [ 0  1  0 ] )
line ([P0(1) eje_Z_1(1)], [P0(2) eje_Z_1(2)], [P0(3) eje_Z_1(3)], 'linewidth' , 5 , 'color' , [ 0  0  1 ] )

A1=[cos(0) 0 sin(0) 0;sin(0) 0 -sin(0) 0;0 1 0 L1;0 0 0 1];
Tx = [ 1  0  0  0; 0  1  0  0 ; 0  0  1  L1 ; 0  0  0  1 ];
MR=A1*Tx;
P1=MR(1:3,4);
line([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)],'color',[1 0 1], 'linewidth' ,4.5);
pause(0.1)

A2=[cos(anVec2(i)) -sin(anVec2(i)) 0 L2*cos(anVec2(i));sin(anVec2(i)) cos(anVec2(i)) 0 L2*sin(anVec2(i));0 0 1 0;0 0 0 1];
Mr=A1*A2;

P2=Mr(1:3,4);
line([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'color',[0 0 0], 'linewidth' ,4.5);


A1=[cos(0) 0 sin(0) 0;sin(0) 0 -sin(0) 0;0 1 0 0;0 0 0 1];
A2=[cos(0) -sin(0) 0 L2*cos(0);sin(0) cos(0) 0 0;0 0 1 0;0 0 0 1];
Mr=A1*A2;

Tx = [ 1  0  0  L2; 0  1  0  0 ; 0  0  1  0 ; 0  0  0  1 ];
MR=Mr*Tx;
P2=MR(1:3,4);


end

for i=1:length(anVec2)
clf
line([-10 10],[0 0],[0 0],'color',[1 0 0], 'linewidth' ,2.5);%eje x
line([0 0],[-10 10],[0 0],'color',[0 1 0], 'linewidth' ,2.5);%eje y
line([0 0],[0 0],[-10 10],'color',[0 0 1], 'linewidth' ,2.5);%eje Z
view (98,20);

%Matrices de transformacipon homogennia 
A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
P1=A1(1:3,4);

line([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)],'color',[1 0 1], 'linewidth' ,4.5);

eje_x_1 = A1 ( 1 : 3 , 1 );
eje_y_1 = A1 ( 1 : 3 , 2 );
eje_Z_1 = A1 ( 1 : 3 , 3 );

line ([P0(1) eje_x_1(1)], [P0(2) eje_x_1(2)], [P0(3) eje_x_1(3)], 'linewidth' , 5 , 'color' , [ 1  0  0 ] )
line ([P0(1) eje_y_1(1)], [P0(2) eje_y_1(2)], [P0(3) eje_y_1(3)], 'linewidth' , 5 , 'color' , [ 0  1  0 ] )
line ([P0(1) eje_Z_1(1)], [P0(2) eje_Z_1(2)], [P0(3) eje_Z_1(3)], 'linewidth' , 5 , 'color' , [ 0  0  1 ] )
%Matrices de transformacipon homogennia 
A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
A2=[cos(anVec2(i)) -sin(anVec2(i)) 0 L2*cos(anVec2(i));sin(anVec2(i)) cos(anVec2(i)) 0 L2*sin(anVec2(i));0 0 1 0;0 0 0 1];
Mr=A1*A2;

P2=Mr(1:3,4);
line([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'color',[0 0 0], 'linewidth' ,4.5);

A1=[cos(0) 0 sin(0) 0;sin(0) 0 -sin(0) 0;0 1 0 0;0 0 0 1];
A2=[cos(0) -sin(0) 0 L2*cos(0);sin(0) cos(0) 0 0;0 0 1 0;0 0 0 1];
Mr=A1*A2;

Tx = [ 1  0  0  L2; 0  1  0  0 ; 0  0  1  0 ; 0  0  0  1 ];
MR=Mr*Tx;
P2=MR(1:3,4);


pause(0.1);

end


for i=1:length(anVec3)
clf
line([-10 10],[0 0],[0 0],'color',[1 0 0], 'linewidth' ,2.5);%eje x
line([0 0],[-10 10],[0 0],'color',[0 1 0], 'linewidth' ,2.5);%eje y
line([0 0],[0 0],[-10 10],'color',[0 0 1], 'linewidth' ,2.5);%eje Z
view (98,20);
A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
%A1=[cos(anVec(i)) 0 sin(anVec(i)) 0;sin(anVec(i)) 0 -sin(anVec(i)) 0;0 1 0 L1;0 0 0 1];
P1=A1(1:3,4);

line([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)],'color',[1 0 1], 'linewidth' ,4.5);

eje_x_1 = A1 ( 1 : 3 , 1 );
eje_y_1 = A1 ( 1 : 3 , 2 );
eje_Z_1 = A1 ( 1 : 3 , 3 );

line ([P0(1) eje_x_1(1)], [P0(2) eje_x_1(2)], [P0(3) eje_x_1(3)], 'linewidth' , 5 , 'color' , [ 1  0  0 ] )
line ([P0(1) eje_y_1(1)], [P0(2) eje_y_1(2)], [P0(3) eje_y_1(3)], 'linewidth' , 5 , 'color' , [ 0  1  0 ] )
line ([P0(1) eje_Z_1(1)], [P0(2) eje_Z_1(2)], [P0(3) eje_Z_1(3)], 'linewidth' , 5 , 'color' , [ 0  1  0 ] )

A2=[cos(anVec2(i)) -sin(anVec2(i)) 0 L2*cos(anVec2(i));sin(anVec2(i)) cos(anVec2(i)) 0 L2*sin(anVec2(i));0 0 1 0;0 0 0 1];
Mr=A1*A2;

P2=Mr(1:3,4);
line([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'color',[0 0 0], 'linewidth' ,4.5);


A1=[cos(0) 0 sin(0) 0;sin(0) 0 -sin(0) 0;0 1 0 0;0 0 0 1];
A2=[cos(0) -sin(0) 0 L2*cos(0);sin(0) cos(0) 0 0;0 0 1 0;0 0 0 1];
Mr=A1*A2;

Tx = [ 1  0  0  L2; 0  1  0  0 ; 0  0  1  0 ; 0  0  0  1 ];
MR=Mr*Tx;
P2=MR(1:3,4);

A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
A2=[cos(anVec2(i)) -sin(anVec2(i)) 0 L2*cos(anVec2(i));sin(anVec2(i)) cos(anVec2(i)) 0 L2*sin(anVec2(i));0 0 1 0;0 0 0 1];
Mr=A1*A2;

P2=Mr(1:3,4);
line([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'color',[0 0 0], 'linewidth' ,4.5);

A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
A2=[cos(theta2Rad) -sin(theta2Rad) 0 L2*cos(theta2Rad);sin(theta2Rad) cos(theta2Rad) 0 L2*sin(theta2Rad);0 0 1 0;0 0 0 1];
%A2=[cos(anVec2(i)) -sin(anVec2(i)) 0 L2*cos(anVec2(i));sin(anVec2(i)) cos(anVec2(i)) 0 L2*sin(anVec2(i));0 0 1 0;0 0 0 1];
Mr=A1*A2;
P2=Mr(1:3,4);
line([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)],'color',[0 0 0], 'linewidth' ,4.5);

%Matrices de transformacipon homogennia 
A1=[cos(theta1Rad) 0 sin(theta1Rad) 0;sin(theta1Rad) 0 -sin(theta1Rad) 0;0 1 0 L1;0 0 0 1];
A2=[cos(theta2Rad) -sin(theta2Rad) 0 L2*cos(theta2Rad);sin(theta2Rad) cos(theta2Rad) 0 L2*sin(theta2Rad);0 0 1 0;0 0 0 1];
A3=[cos(anVec3(i)) -sin(anVec3(i)) 0 L3*cos(anVec3(i));sin(anVec3(i)) cos(anVec3(i)) 0 L3*sin(anVec3(i)); 0 0 1 0;0 0 0 1];

Mrt=A1*A2*A3;
P3=Mrt(1:3,4);

line([P2(1) P3(1)],[P2(2) P3(2)],[P2(3) P3(3)],'color',[0 1 1], 'linewidth' ,4.5);


  pause(0.1)
end


