syms t1 t2 d3
d2=sqrt(2)
a1=[cos(t1) 0 -sin(t1) 0; sin(t1) 0 cos(t1) 0 ; 0 -1 0 0 ; 0 0 0 1]
a2=[cos(t2) 0 sin(t2) 0; sin(t2) 0 -cos(t2) 0; 0 1 0 d2; 0 0 0 1]
a3=[1 0 0 0; 0 1 0 0; 0 0 1 d3; 0 0 0 1]
T3 =a1*a2*a3
eqns = [T3(1,4) == 1, T3(2,4) == 1 , T3(3,4) == 1];
s = solve(eqns, [t1 t2 d3])
s.t1(2,1)
s.t2(2,1)
s.d3(2,1)