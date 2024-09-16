function[totalthrust]=thrust(theta,t)
%gives total vertical thrust 
%inputs
%t=time of flight(sec)
%theta=angle of the main engines of the orbiter(rads)
%ouptuts
%totalthrust=total vertical thrust acting on rocket(N)

%version 1:Author=Eoin Gahan created:10/5/22
if   ~isreal(t) || ~isscalar (t) || (t)<0
 
    error('Input argument t must be scalar and real and positive')  
  
    elseif t>511
      error('flight of Rocket only measured until exteranl tank is jettisoned at 511 seconds')
  
end
%constants
TME=173725.736*9.81; %sea level 100% throttle thrust of main engine(N)
TSRB=1202018.8*9.81;%sea level thrust of 1 SRB(N)
extrathrust=(87000*0.4*9.81)*(t/511);%extra thrust as time increases due to reduced pressure and air density(N)
%changes thrusts on main enegines at various time intervals
if t>=0 && t<30
Tme=(3*(0.9*TME+extrathrust))*cos(theta);
Tsrb=2*(TSRB);
elseif t>=30 && t<62
    Tme=(3*(0.65*TME+extrathrust))*cos(theta);
Tsrb=2*(TSRB);
elseif t>=62 && t<125
    Tme=(3*(1.04*TME+extrathrust))*cos(theta);
Tsrb=2*(TSRB);
%SRBs have been jetonised
elseif t>=125 && t<511
  Tme=(3*(1.04*TME+extrathrust))*cos(theta);
Tsrb=0;
end
  
totalthrust=Tme+Tsrb;
end