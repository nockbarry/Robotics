syms t4 t5 t6
a4=[ cos(t4) 0 -sin(t4); sin(t4) 0 cos(t4); 0 -1 0]
a5=[ cos(t5) 0 -sin(t5); sin(t5) 0 cos(t5); 0 -1 0]
a6=[ cos(t6)  -sin(t6) 0 ; sin(t6) cos(t6) 0; 0 0 1]
r36=a4*a5*a6
eqns = [r36(1,3) == 1, r36(2,4) == 1 , T3(3,4) == 1];
s = solve(eqns, [t1 t2 d3])
theta_1 = s.t1(2,1)
theta_2 = s.t2(2,1)
d_3 = s.d3(2,1)