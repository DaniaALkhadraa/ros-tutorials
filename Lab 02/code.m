%Lab2 - RoboticLabs 1920DU
%Alia Hamwi - AI Engineer

%%%%%% 1D joint
%% 
a1  = 1 
q1 = 0.2

trchain2('R(q1) Tx(a1)',q1)

%%
syms q1 a1

trchain2('R(q1) Tx(a1)',q1)

%%
mdl_planar1 %serial link object in workspace p1

p1.teach

%%
p1.plot([pi/2]) %the angle in radian

%%
p1.plot([0])
%%

%%%%%% 2D joint

%%
a1 = 1
a2 = 1
q1 = 0.2
q2 = 0.3

trchain2('R(q1) Tx(a1) R(q2) Tx(a2)',[q1 q2])


%%
syms q1 q2 a1 a2
trchain2('R(q1) Tx(a1) R(q2) Tx(a2)',[q1 q2])


%%
mdl_planar2 %serial link object in workspace p2
p2.teach


%%
p2.plot([0 pi/2])

%%
p2.plot([pi/2 -pi/2])

