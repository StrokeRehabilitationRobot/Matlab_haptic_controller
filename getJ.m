function [ j1,j2,j3 ] = getJ( q)
%GETJ Summary of this function goes here
%   Detailed explanation goes here
    

    q1 = q(1);
    q2 = q(2);
    q3 = q(3);

    l0 = 15;
    l1 = 22;
    l2 = 17;

    q1 = q(1);
    q2 = q(2);
    q3 = q(3);
    
    j1 = [ 0, 0, 0; 0, 0, 0; 0, 0, 0];
    
    j2 = [ -l1*cos(q2)*sin(q1), -l1*cos(q1)*sin(q2), 0;...
            l1*cos(q1)*cos(q2), -l1*sin(q1)*sin(q2), 0;...
                            0,          l2*cos(q2),  0];
    
    j3 = [ -l2*cos(q2 + q3)*sin(q1), - l1*sin(q2) - l2*sin(q2 + q3)*cos(q1), -l2*sin(q2 + q3)*cos(q1);...
            l2*cos(q2 + q3)*cos(q1), - l1*sin(q2) - l2*sin(q2 + q3)*sin(q1), -l2*sin(q2 + q3)*sin(q1);...
                                 0,           l2*cos(q2 + q3) + l1*cos(q2),          l2*cos(q2 + q3)];

end

