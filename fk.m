function [ pos ] = fk( q )
%FK Summary of this function goes here
%   Detailed explanation goes here

    l0 = 15;
    l1 = 22;
    l2 = 17;
    q1 = q(1)
    q2 = q(2)
    q3 = q(3)
    x = l1*cos(q2)+l2*cos(q2+q3)*cos(q1) + l0*sin(pi/4);
    y = l1*cos(q2)+l2*cos(q2+q3)*sin(q1);
    z = l0*cos(pi/4) + l1*sin(q2)+l2*sin(q2+q3);
    pos = [x;y;z]
end

