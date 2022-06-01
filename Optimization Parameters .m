addpath('E:\casadi-windows-matlabR2014a-v3.5.1')
import casadi.*
Q = [100,0;0,200];
c = [-7000 ; -6000];
A = [4000,3000;60,80];
b = [100000;2000];
lb = [0,0]
ub = [inf;inf];
x = SX.sym('x',2);
prob_struct = struct ('x',x ,'f',c'*x+x'*Q*x,'g',A*x-b);
solver = qpsol('solver','qpoases',prob_struct);
sol = solver ('x0',[1;1],'lbg',[-inf;-inf],'ubg',[0,0],'lbx',lb,'ubx',ub);

solx = sol.x
solf = sol.f
