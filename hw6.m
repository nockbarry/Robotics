syms t1 t2 d3
d2=1
a1=[cosd(t1) 0 -sind(t1) 0; sind(t1) 0 cosd(t1) 0 ; 0 -1 0 0 ; 0 0 0 1];
a2=[cosd(t2) 0 sind(t2) 0; sind(t2) 0 -cosd(t2) 0; 0 1 0 d2; 0 0 0 1];
a3=[1 0 0 0; 0 1 0 0; 0 0 1 d3; 0 0 0 1];
T3 =a1*a2*a3;
eqns = [T3(1,4) == 1, T3(2,4) == 1 , T3(3,4) == 1];
s = solve(eqns, [t1 t2 d3])
f=1;
te1 = s.t1(f,1)
te2 = s.t2(f,1)
de3 = s.d3(f,1)
a1=[cosd(te1) 0 -sind(te1) 0; sind(te1) 0 cosd(te1) 0 ; 0 -1 0 0 ; 0 0 0 1];
a2=[cosd(te2) 0 sind(te2) 0; sind(te2) 0 -cosd(te2) 0; 0 1 0 d2; 0 0 0 1];
a3=[1 0 0 0; 0 1 0 0; 0 0 1 de3; 0 0 0 1];
T3 =a1*a2*a3
R3=T3(1:3,1:3)
R6=[ 0 1 0; 0 0 -1; -1 0 0]
R36=R3'*R6
syms t4 t5 t6
a4=[ cos(t4) 0 -sin(t4); sin(t4) 0 cos(t4); 0 -1 0];
a5=[ cos(t5) 0 -sin(t5); sin(t5) 0 cos(t5); 0 -1 0];
a6=[ cos(t6)  -sin(t6) 0 ; sin(t6) cos(t6) 0; 0 0 1];
R36sym=a4*a5*a6
eqns2 = [R36(1,1) == R36sym(1,1), R36(1,2) == R36sym(1,2) , R36(1,3) == R36sym(1,3),R36(2,1) == R36sym(2,1),R36(3,1) == R36sym(3,1),R36(2,2) == R36sym(2,2),R36(3,3) == R36sym(3,3),R36(2,3) == R36sym(2,3), R36(3,2) == R36sym(3,2)];
s2 = solve(eqns2, [t4 t5 t6])
f1=1;
te4 = s2.t4(f1,1)
te5 = s2.t5(f1,1)
te6 = s2.t6(f1,1)