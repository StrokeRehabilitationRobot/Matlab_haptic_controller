F = [-1.2;.0;0];
m = 1;
dt = 0.01
A = eye(6,6);
C = eye(6,6);
B = zeros(6,3);
D = B;
A(1,4) = dt
A(2,5) = dt
A(3,6) = dt
B(4,1) = dt;
B(5,2) = dt;
B(6,3) = dt;
Kp = 800000*eye(3);
Kd = 5*eye(3);

sim("controller")