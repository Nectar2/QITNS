function dy=diopolar(t,y)

global KK;
global omiga;
global moz;
global VRF;
global rr;
global VAC;
global WAC;
global Th;

dy = zeros(2,1);%Initialize the column vector
dy(1) = y(2);
dy(2) = VRF*cos(omiga*t)/(rr*rr*moz*Th)*y(1) - omiga*KK*dy(1)-VAC*cos(WAC*t)/(rr*moz*Th);
end

