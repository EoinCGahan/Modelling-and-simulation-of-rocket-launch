
function[ro]=densityofair(s,Mr,Fg,t)
%function to find the density of dry air 

%inputs
%s=distance travelled(height above sealevel)(metres)
%Mr=total mass of the rocket at given time(kg)
%Fg=Gravitational force on rocket(N)
%t=time into flight(sec)
%ouptuts
%ro=density of dry air(kg/m^3)

%version 1:Author=Eoin Gahan created:10/5/22

%constants
R=8.31447;%gas constant
L=0.0065;%drop in temp per metre(Kelvin/m)
ro0=1.2;%density of air at sea level(florida coast dry air)

if t==0
    ro=ro0;
elseif t>0 && t<=112
    ro=ro0*(((1-((L*(s))/288.15)))^((((Fg/Mr)*0.0289644)/(R*L))-1));
%MATLAB calculates ro to be effectively 0 for t>112 and stops
%calculations,therefore
elseif t>112 && t<511
    ro=0;
end