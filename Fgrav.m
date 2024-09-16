function[Fg]=Fgrav(s,Mr)
%function to give downward Gravitational force on rocket

%inputs
%s=distance travelled(height above sealevel)(metres)
%Mr=total mass of the rocket at given time(kg)
%ouptuts
%Fg=Force due to gravity on the rocket

%version 1:Author=Eoin Gahan created:10/5/22

 
%constants
G=6.6743*10^-11;%Gravitational constant
Me=5.9722*10^24;%mass of the earth(kg)
rearth=6.371*10^6;%radius of earth (m)
Fg=((Mr*Me*G)/((rearth+s)^2));
end