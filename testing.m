  
   
  g = [0;0;-9.81];
    

  
    [j1,j2,j3] = getJ([0;0;0])

    G1 = transpose(j1)*g;
    G2 = transpose(j2)*g;
    G3 = transpose(j3)*g;

    y = G1+G2+G3

