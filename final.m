syms t1 t2 t3 t4 t5 t6 a1 a2 a3 d4 d6
T01=[cos(t1) 0 sin(t1) a1*cos(t1);sin(t1) 0 -cos(t1) a1*sin(t1); 0 1 0 0; 0 0 0 1]
T12=[cos(t2) -sin(t2) 0 a2*cos(t2);sin(t2) cos(t1) 0 a2*sin(t2); 0 0  1 0; 0 0 0 1]
T23=[cos(t3) 0 sin(t3) a3*cos(t3);sin(t3) 0 -cos(t3) a3*sin(t3); 0 1 0 0; 0 0 0 1]
T34=[cos(t4) 0 -sin(t4) 0;sin(t4) 0 cos(t4) 0; 0 -1 0 d4; 0 0 0 1]
T45=[cos(t5) 0 sin(t5) 0;sin(t5) 0 -cos(t5) 0; 0 1 0 0; 0 0 0 1]
T56=[cos(t6) -sin(t6) 0 0;sin(t6) cos(t6) 0 0; 0 0  1 d6; 0 0 0 1]
T60=T01*T12*T23*T34*T45*T56
