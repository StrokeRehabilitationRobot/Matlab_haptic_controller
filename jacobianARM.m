syms l0 l1 l2 q1 q2 q3

x3 = l1*cos(q2)+l2*cos(q2+q3)*cos(q1) + l0*sin(pi/4);
y3 = l1*cos(q2)+l2*cos(q2+q3)*sin(q1);
z3 = l0*cos(pi/4) + l1*sin(q2)+l2*sin(q2+q3);

pose1 = [0;0;l1];
pose2 = [l1*cos(q2)*cos(q1); l1*cos(q2)*sin(q1); l0 + l2*sin(q2)];
pose3 = [x3;y3;z3];


jacobian(pose1,[q1,q2,q3]);
jacobian(pose2,[q1,q2,q3]);

jacobian(pose3,[q1,q2,q3]);