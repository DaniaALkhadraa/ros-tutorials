%Robotic Labs 1920DU - Lab 04 - Damascus University.
%Instructors: Alia AlHamwi - Modar AlShamali - Waseem Kntar, AI Engineers.
%In this code we build a function for controlling (move for a position) an arm in real world & simulation using inverse kenimatics.

 dh = [
0 0 10 0
0 0 9 0
]
r = SerialLink(dh)

P = transl(0,14,0)

q = r.ikine(P,'mask',[1 1 0 0 0 0])

r.plot(q)
rad2deg(q)