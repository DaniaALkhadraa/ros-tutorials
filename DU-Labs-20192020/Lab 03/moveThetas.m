%Robotic Labs 1920DU - Lab 03 - Damascus University
%Instructors: Alia AlHamwi - Modar AlShamali - Waseem Kntar, AI Engineers
%In this code we build a function for controlling (move for angles) an arm in real world & simulation.

function moveThetas(q1, q2) % q in degrees

d1 = 10;
d2 = 9;
 dh = [
0 0 d1 0 %theta | r | d | alpha
0 0 d2 0
];


r = SerialLink(dh)

r.teach

q1rad = deg2rad(q1)
q2rad = deg2rad(q2)
r.plot([q1rad q2rad])

p = r.fkine([q1rad q2rad])


% a = Arduino1('COM3'); %Call only one time (after plug arduino)
moveMotor(a, 1, 135 - q1);
pause(7);
moveMotor(a, 2, 135 - q2);

% close_arduino(a); %Call only when you want to un-plug arduino
end
