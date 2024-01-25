numf = [1];
denf = [1 1 1];
g = tf(numf, denf);
rlocus(g)
[z,p,k]= residue (numf, denf)