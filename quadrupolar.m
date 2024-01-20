function dy=quadrupolar(t,y)

global KK;
global omiga;
global moz;
global VRF;
global rr;
global VAC;
global WAC;

dy = zeros(2,1);%Initialize the column vector
dy(1) = y(2);
dy(2) = -VRF*cos(omiga*t)*(1.60217662*1E-19)/(rr*rr*moz*1.993*1E-26/12)*y(1)-VAC*cos(WAC*t)*(1.60217662*1E-19)/(moz*(rr*rr)*1.993*1E-26/12)*y(1)- omiga*KK*dy(1);
end

